---
layout: lessonTxt
---
<div class="paginationDiv">
<div class="pagination">
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_am/Capitulo1/am_1.1/b/', 'am_1.1-b.html','am_1.1-b.csd', false)" href="javascript:void(0);">&laquo;</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_am/Capitulo1/am_1.1/a/', 'am_1.1-a.html','am_1.1-a.csd', false)" href="javascript:void(0);">1</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_am/Capitulo1/am_1.1/b/', 'am_1.1-b.html','am_1.1-b.csd', false)" href="javascript:void(0);">2</a>
  <a class="active" href="#">3</a>
  <a href="#">&raquo;</a>
</div>
</div>
<br style="display: block; content: ''; margin-top: 20px;">
<hr>
<br style="display: block; content: ''; margin-top: 40px;">

<div style="border:2px solid #666; border-radius:11px; padding:20px;height=auto;">
<iframe id="form-iframe" src="/learn-csound-site/lessons/sintesis_aditiva/side_projects/sintesis_am/Capitulo1/am_1.1/c/sinte2.html" style="margin:0; width:100%; height:150px; border:none; overflow:hidden;" scrolling="no" onload="AdjustIframeHeightOnLoad()"></iframe>
</div>  
<script>

function AdjustIframeHeightOnLoad() { 
	   document.getElementById("form-iframe").style.height = document.getElementById("form-iframe").contentWindow.document.body.scrollHeight + "px"; 

window.onresize = AdjustIframeHeightOnLoad;

}
</script>
