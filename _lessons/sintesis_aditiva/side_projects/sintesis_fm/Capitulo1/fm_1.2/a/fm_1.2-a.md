---
layout: lessonTxt
---

<div class="paginationDiv">
<div class="pagination">
  <a href="#">&laquo;</a>
  <a class="active" href="#">1</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_fm/Capitulo1/fm_1.2/b/', 'fm_1.2-b.html','fm_1.2-b.csd', false)" href="javascript:void(0);">2</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_fm/Capitulo1/fm_1.2/b/', 'fm_1.2-b.html','fm_1.2-b.csd', false)" href="javascript:void(0);">&raquo;</a>
</div>
</div>
<br style="display: block; content: ''; margin-top: 20px;">
<hr>
<br style="display: block; content: ''; margin-top: 40px;">

# <center> Síntesis FM Variable </center>

<br>

<script> 
function jumpToLine(init, end) { 
 editor.setSelection({line: init, ch:0}, {line: end});
 editor.scrollIntoView({line: init-2, ch:0});
}


function play(i) {
    var csd = ""
    if (i == 1)
      csd = "<CsScore>\na 0 0 12\n f 1 12 8192 10 1\n f 2 12 8193 7 0 2048 1 4097 1 2048 0\n i 1 12 3 -12 440 3 20 2\n";
    else if (i == 2)
      csd = "<CsScore>\na 0 0 12\n f 1 12 8192 10 1\n f 2 12 8193 7 0 2048 1 4097 1 2048 0\n f 3 12 8193 7 0 8193 1\n i 2 12 3 -12 440 3 20 2 3\n";
    else if (i == 3)
      csd = "<CsScore>\na 0 0 12\n f 1 12 8192 10 1\n f 2 12 8193 7 0 2048 1 4097 1 2048 0\n f 3 12 8193 7 0 8193 1\n i 3 12 3 -12 440 3 20 10 2 3\n";
    var txt = editor.getValue();
    txt = txt.replace(/<CsScore>/, csd);

     csound.stop();
     csound.Csound.setOption("-r" + window.parent.csound.Csound.getaudioContext().sampleRate);
     csound.CompileCsdText(txt);
 	 csound.Play();
}

</script>



## 1. Síntesis FM con Envolvente de Amplitud<button onclick="jumpToLine(5,22)">Ir a</button> <button onclick="play(1)">Play</button>

1. Usaremos una instancia del opcode <a href="http://www.csounds.com/manual/html/poscil.html"><b>poscil</b></a> para leer una envolvente de amplitud contenida en una tabla.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: relación <b>f<sub>c</sub></b>:<b>f<sub>m</sub></b>.
      
      - <b>p7</b>: Índice de Modulación.

      - <b>p8</b>: número de tabla de la envolvente de amplitud.


<br>

## 2. Síntesis FM con Envolvente de Amplitud e IMAX<button onclick="jumpToLine(23,42)">Ir a</button> <button onclick="play(2)">Play</button>

1. Una segunda instancia de <a href="http://www.csounds.com/manual/html/poscil.html"><b>poscil</b></a> nos permitirá incorporar una envolvente para controlar además la evolución del Índice de Modulación.

2. El campo <b>p7</b> servirá para reescalar la tabla correspondiente, funcionando como un valor máximo (IMAX) para el Índice de Modulación.

3. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: relación <b>f<sub>c</sub></b>:<b>f<sub>m</sub></b>.

      - <b>p7</b>: Índice de Modulación máximo.

      - <b>p8</b>: número de tabla de la envolvente de amplitud.

      - <b>p9</b>: número de tabla de la envolvente del Índice de Modulación.


<br>


## 3. Síntesis FM con Envolvente de Amplitud, IMIN e IMAX<button onclick="jumpToLine(43,65)">Ir a</button> <button onclick="play(3)">Play</button>

1. Modificaremos el código del instrumento 2 para poder indicar además un valor mínimo (IMIN) para el Índice de Modulación.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: relación <b>f<sub>c</sub></b>:<b>f<sub>m</sub></b>.

      - <b>p7</b>: Índice de Modulación máximo.

      - <b>p8</b>: Índice de Modulación mínimo.

      - <b>p9</b>: número de tabla de la envolvente de amplitud.

      - <b>p10</b>: número de tabla de la envolvente del Índice de Modulación.


<br>
## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_fm/Capitulo1/fm_1.2/a/fm_1.2-a.csd">Síntesis FM Variable</a>

<br>

