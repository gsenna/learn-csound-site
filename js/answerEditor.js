let answerEditor = CodeMirror.fromTextArea(
	document.getElementById("showme"), 
	{
		lineNumbers: true,
        matchBrackets: true,
        autoCloseBrackets: true,
		theme: "monokai",
        mode: "csound",
        //scrollbarStyle: "null"
        viewportMargin: Infinity,
        //keyMap: "vim",
	});

var $wrapper = $(answerEditor.getWrapperElement());
$wrapper.addClass('CodeMirror-answer'); // hides cursor
	
  function loadAnswer(Answer) {
      var clientTxt = new XMLHttpRequest();
      clientTxt.open('GET', Answer, true);
      clientTxt.onreadystatechange = function() {
            answerEditor.setValue(clientTxt.responseText);
            answerEditor.clearHistory();
      }
      clientTxt.send();
  }

  

  
  $(document).ready(function() {
	
		$("#b-respuestas").click(function() {
			$("#showmeDiv").slideToggle("slow");
        	answerEditor.refresh();

		});
	});
	
