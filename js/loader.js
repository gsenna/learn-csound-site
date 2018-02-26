  var toggleViewBtn = document.querySelector('#c-button--toggle-view');
  toggleViewBtn.addEventListener('click', function(e) {
    e.preventDefault;
    var f = $('#lesson').outerWidth(true) / $('#lesson').parent().outerWidth(true) * 100;
    if (f) {


      $('#editor-container').css("width", '100%');
      $('#lesson').css("width", '0');
      $('#ResetButton').css("display", 'inline-block');
      $('#CompileButton').css("display", 'inline-block');
      $('#SaveTextButton').css("display", 'inline-block');
      $('#RenderButton').css("display", 'inline-block');

    }

    else
    {
      $('#editor-container').css("width", '0');
      $('#lesson').css("width", '100%');
      $('#ResetButton').css("display", 'none');
      $('#CompileButton').css("display", 'none');
      $('#SaveTextButton').css("display", 'none');
      $('#RenderButton').css("display", 'none');


	}
  });

  function loadOnClick(baseUrl, lessonHtml, lessonCsd, onpageload) {
      console.log(baseUrl, lessonHtml, lessonCsd);
      var clientTxt = new XMLHttpRequest();
      clientTxt.open('GET', baseUrl + lessonHtml, true);
      clientTxt.onreadystatechange = function() {
        $("#lessonText").html(clientTxt.responseText);
        //history.pushState('data to be passed', 'Title of the page', 'http://localhost:4000' + baseUrl );
        if (clientTxt.readyState == 4 && clientTxt.status == 200 && lessonCsd.length != 0) {
          var client = new XMLHttpRequest();
          client.open('GET', baseUrl + lessonCsd, true);
          client.onreadystatechange = function() {
            editor.setValue("; Presione ctrl-e para Correr.\n" + client.responseText);

            editor.clearHistory();
          }
          client.send();
        }
        if (onpageload == true) { 
          $("#c-button--slide-right").click()
        }
      }
      clientTxt.send();
	  }
      
     
      
      function loadMenu(baseUrlMenu) {
      var client = new XMLHttpRequest();

      client.open('GET', baseUrlMenu + '/menu.html', true);
      client.onreadystatechange = function() {
        $('#accordion-menu').html(client.responseText);
      }
      client.send();
      }
      

      function loadMenuAndClick(baseUrl) {
		loadMenu(baseUrl);
		$('#c-button--slide-right').click();
      }
