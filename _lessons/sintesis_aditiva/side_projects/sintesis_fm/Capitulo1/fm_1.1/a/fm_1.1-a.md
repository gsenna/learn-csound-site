---
layout: lessonTxt
---

<div class="paginationDiv">
<div class="pagination">
  <a href="#">&laquo;</a>
  <a class="active" href="#">1</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_fm/Capitulo1/fm_1.1/b/', 'fm_1.1-b.html','fm_1.1-b.csd', false)" href="javascript:void(0);">2</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_fm/Capitulo1/fm_1.1/c/', 'fm_1.1-c.html','fm_1.1-c.csd', false)" href="javascript:void(0);">3</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_fm/Capitulo1/fm_1.1/d/', 'fm_1.1-d.html','fm_1.1-d.csd', false)" href="javascript:void(0);">4</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_fm/Capitulo1/fm_1.1/b/', 'fm_1.1-b.html','fm_1.1-b.csd', false)" href="javascript:void(0);">&raquo;</a>
</div>
</div>
<br style="display: block; content: ''; margin-top: 20px;">
<hr>
<br style="display: block; content: ''; margin-top: 40px;">

# <center> Síntesis FM </center>

<br>

<script> 
function jumpToLine(init, end) { 
 editor.setSelection({line: init, ch:0}, {line: end});
 editor.scrollIntoView({line: init-2, ch:0});
}

 
function play(i) {
    var csd = ""
    if (i == 1)
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 1 19 3 -12 440\ne";
    else if (i == 2)
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 2 19 3 -12 440 10 5\ne";
    else if (i == 3)
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 3 19 3 -12 440 100 220\ne";
    else if (i == 4)
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 4 19 3 -12 440 0.45 220\ne";
    else if (i == 5)
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 5 19 3 -12 440 0.45 2\ne";
    var txt = editor.getValue();
    txt = txt.replace(/<CsScore>/, csd);

     csound.stop();
     csound.Csound.setOption("-r" + window.parent.csound.Csound.getaudioContext().sampleRate);
     csound.CompileCsdText(txt);
 	 csound.Play();
}

</script>


## 1. Onda Portadora  <button onclick="jumpToLine(4,15)">Ir a</button> <button onclick="play(1)">Play</button>

1. Usaremos una instancia del opcode <a href="http://www.csounds.com/manual/html/poscil.html"><b>poscil</b></a> para generar la Onda Portadora.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia en Hz.

<br>

## 2. Vibrato  <button onclick="jumpToLine(17,32)">Ir a</button> <button onclick="play(2)">Play</button>


1. Una segunda instancia del opcode <a href="http://www.csounds.com/manual/html/poscil.html"><b>poscil</b></a> nos permitirá generar una Onda Moduladora.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: Profundidad del Vibrato (<i>depth</i>).

      - <b>p7</b>: Frecuencia del Vibrato (<i>rate</i>).

3. Si utilizamos un valor bajo para <b>p6</b> y un valor dentro del rango subaudible para <b>p7</b> obtendremos el efecto conocido como <i>Vibrato</i>.


<br>

## 3. Síntesis FM  <button onclick="jumpToLine(34,49)">Ir a</button> <button onclick="play(3)">Play</button>


1. Si la frecuencia de la Moduladora (<b>f<sub>m</sub></b>) se encuentra en el rango audible, el resultado es una onda compleja por Síntesis FM.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: desviación pico en Hz.

      - <b>p7</b>: frecuencia Moduladora en Hz.

3. El espectro resultante exhibe componentes (banda laterales) hacia los costados de la frecuencia de la Portadora (<b>f<sub>c</sub></b>).

4. Habrá componentes espectrales presentes en <b>f<sub>c</sub></b> ± k⋅<b>f<sub>m</sub></b>.

5. Al incrementar la desviación (<b>d</b>), la energía de las bandas laterales se incrementará a expensas de la <b>f<sub>c</sub></b>.

<br>


## 4. Índice de Modulación  <button onclick="jumpToLine(51,66)">Ir a</button> <button onclick="play(4)">Play</button>

1. El espectro de la síntesis FM depende de ambos parámetros de control: <b>d</b> y <b>fm</b>.

2. Para poder medir la cantidad de modulación que estamos ejerciendo sobre la Portadora podemos establecer una relación entre ambos valores <b>I = d / fm</b>.

3. La cantidad de bandas laterales con amplitud significativa será aproximandamente <b>I + 2</b>.

4. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: Índice de Modulación.

      - <b>p7</b>: frecuencia Moduladora en Hz.


<br>

## 5. Relación <b>f<sub>c</sub></b>:<b>f<sub>m</sub></b>  <button onclick="jumpToLine(68,83)">Ir a</button> <button onclick="play(5)">Play</button>

1. Si reemplazamos el control de la <b>f<sub>m</sub></b> por una expresión podremos mantener una misma relación entre las frecuencias Portadora y Moduladora, independientemente del valor efectivo <b>f<sub>c</sub></b>.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: Índice de Modulación.

      - <b>p7</b>: relación <b>f<sub>c</sub></b>:<b>f<sub>m</sub></b> .


<br>
## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_fm/Capitulo1/fm_1.1/a/fm_1.1-a.csd">Síntesis FM Básica</a>

<br>

