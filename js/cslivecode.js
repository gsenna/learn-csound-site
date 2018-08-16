var cs;
var youtube_api_init = 0;
const currentFilePath = "/temp.csd";
//const AudioContext_sr = new (window.AudioContext || window.webkitAudioContext)();
const fileManager = new FileManager(['csd'], 
        function(t) { console.debug(t); });

function evalCode() {
    var txt = editor.getValue();
    txt = txt.replace("/<CsScore>/g", '<CsScore>\n f 0 z');
    fileManager.writeStringToFile(currentFilePath,
         txt);
     csound.stop();
     csound.Csound.setOption("-r" + csound.Csound.getaudioContext().sampleRate);
     csound.CompileCsdText(currentFilePath);
     csound.Play();
    //editor.refresh();
    //editor.focus();
    //editor.setCursor(0,0);

}


function renderCode() {
    var txt = editor.getValue();
    fileManager.writeStringToFile(currentFilePath,
         txt);
    csound.stop();
    csound.Csound.render(currentFilePath);
    saveWav();
}


function saveWav(){
  csound.RequestFileFromLocal("test.wav");
  window.URL = window.webkitURL || window.URL;
  const MIME_TYPE = 'application/octet-stream';
  var bb = new Blob([csound.GetFileData()],{type: MIME_TYPE});
  var a = document.createElement('a'); 
  a.download =  "test.wav";
  a.href = window.URL.createObjectURL(bb);
  a.textContent = 'Click here to save file';
  a.dataset.downloadurl = [MIME_TYPE, a.download, a.href].join(':');
  a.id = "test1";
  document.body.appendChild(a);
  $('#test1')[0].click(); 
  document.body.removeChild(a);

}

function saveText(){
   var txt = editor.getValue();
   window.URL = window.webkitURL || window.URL;
   const MIME_TYPE = 'application/octet-stream';
   var myBlob = new Blob([txt], {type : MIME_TYPE});
   var a = document.createElement('a'); 
   a.download =  "mi_archivo.csd";
   a.href = window.URL.createObjectURL(myBlob);
   a.textContent = 'Click here to save file';
   a.dataset.downloadurl = [MIME_TYPE, a.download, a.href].join(':');
   a.id = "test1";
   document.body.appendChild(a);
   $('#test1')[0].click();
   document.body.removeChild(a);
     
}
 
 
let editor = CodeMirror.fromTextArea(
	document.getElementById("csoundCodeEditor"), 
	{
		lineNumbers: true,
        matchBrackets: true,
        autoCloseBrackets: true,
		theme: "monokai",
        mode: "csound",
        //keyMap: "vim",
		extraKeys: {
			"Ctrl-E": evalCode,
		},
	});

function loadCSD(editor, csdFile) {
  var client = new XMLHttpRequest();

  client.open('GET', csdFile, true);
  client.onreadystatechange = function() {
    editor.setValue(client.responseText);
  }
  client.send();
}


function moduleDidLoad() 
{
    var ld = document.getElementById("loadDiv");
    if(csound.Csound.getaudioContext().state != "running") 
            {
		      if(ld != null)
		      {
                ld.innerHTML = "Click para ingresar...";
                ld.addEventListener ("click", function() {
			    csound.Csound.getaudioContext().resume().then(() => {
						ld.remove();
                        console.log('Playback resumed successfully');
                    });
                });
			  }
            } 
    else 
            {
                if(ld != null)
                    ld.remove();
            }
}


$("#CompileButton").click(evalCode);
$("#ResetButton").click(function(){ 
     csound.stop();
     csound.started=false;
    });

$("#RenderButton").click(renderCode);
$("#SaveTextButton").click(saveText);

$('#dragbar').mousedown(function(e){
        e.preventDefault();
        $(document).mousemove(function(e){
	     var c = e.pageX / $('#editor-container').parent().outerWidth(true) * 100;

          $('#editor-container').css("width",c + '%');
          $('#dragbar').css("left",c + '%');
          var f = $('#editor-container').outerWidth(true) / $('#editor-container').parent().outerWidth(true) * 100;
          $('#lesson').css("width", (99 - f) + '%');
          //$('#lesson').css("left", f + '%');
            $('.controls').css("width", (99 - f) + '%');
            $('.controls').css("left", (f+0.2) + '%');
          
       })
});

$(document).mouseup(function(e){
       $(document).unbind('mousemove');
});


