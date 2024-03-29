var cs;
var youtube_api_init = 0;
const currentFilePath = "/temp.csd";
//const AudioContext_sr = new (window.AudioContext || window.webkitAudioContext)();
const fileManager = new FileManager(['csd', 'wav'], 
        function(t) { console.debug(t); });

function evalCode() {
    var txt = editor.getValue();
    txt = txt.replace(/<\/CsScore>/, 'f 0 z\n</CsScore>\n');
    fileManager.writeStringToFile(currentFilePath,
         txt);
     csound.stop();
     var logger = document.getElementById('log');
     if (typeof(logger) != 'undefined' && logger != null) {
         var files = FS.readdir("/");
         logger.innerHTML = '';
         files.forEach(file => {
             if (file.split('.').pop() == "wav")
               logger.innerHTML += file + '<br>';
           });
     }
     csound.Csound.setOption("-r" + csound.Csound.getaudioContext().sampleRate);
     csound.Csound.setOption("-m0");
     csound.Csound.setOption("-d");
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
			"Ctrl-E": saveText,
		},
	});

var $wrapper = $(editor.getWrapperElement());
$wrapper.addClass('CodeMirror-absolute'); // hides cursor

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
                ld.innerHTML = "<b>C l i c k &nbsp;  p a r a &nbsp; I n g r e s a r . . .</b>";
                //csound.CopyToLocal("audios/fox.wav","fox.wav");
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
          //$('.controls').css("width", (99 - f) + '%');
          //$('.controls').css("left", (f+0.2) + '%');
          AdjustIframeHeight();
        })
});

function AdjustIframeHeight() { 
	if($('#form-iframe').length) {
	   document.getElementById("form-iframe").style.height = document.getElementById("form-iframe").contentWindow.document.body.scrollHeight + "px"; 
   }
}

$(document).mouseup(function(e){
       $(document).unbind('mousemove');
});





