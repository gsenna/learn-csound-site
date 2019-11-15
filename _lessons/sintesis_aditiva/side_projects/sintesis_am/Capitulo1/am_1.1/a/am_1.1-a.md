---
layout: lessonTxt
---
<div class="paginationDiv">
<div class="pagination">
  <a href="#">&laquo;</a>
  <a class="active" href="#">1</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_am/Capitulo1/am_1.1/b/', 'am_1.1-b.html','am_1.1-b.csd', false)" href="javascript:void(0);">2</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_am/Capitulo1/am_1.1/c/', 'am_1.1-c.html','am_1.1-c.csd', false)" href="javascript:void(0);">3</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_am/Capitulo1/am_1.1/b/', 'am_1.1-b.html','am_1.1-b.csd', false)" href="javascript:void(0);">&raquo;</a>
</div>
</div>
<br style="display: block; content: ''; margin-top: 20px;">
<hr>
<br style="display: block; content: ''; margin-top: 40px;">

# <center> Síntesis AM</center>

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
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 2 19 3 -12 440 200\ne";
    else if (i == 3)
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 3 19 3 -12 440 200\ne";
    else if (i == 4)
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 4 19 3 -12 440 200\ne";
    else if (i == 5)
      csd = "<CsScore>\na 0 0 19\n f 1 19 8192 10 1\n i 5 19 3 -12 440 2 200\ne";
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

## 2. Síntesis RM  <button onclick="jumpToLine(17,30)">Ir a</button> <button onclick="play(2)">Play</button>


1. Una segunda instancia del opcode <a href="http://www.csounds.com/manual/html/poscil.html"><b>poscil</b></a> nos permitirá generar una Onda Moduladora.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: frecuencia Moduladora en Hz.

3. El espectro resultante exhibe componentes (banda laterales) hacia ambos costados de la frecuencia de la Portadora (<b>f<sub>c</sub></b>).

4. La frecuencia de la Portadora (<b>f<sub>c</sub></b>) estará ausente.

<br>

## 3. Síntesis RM usando un Multiplicador <button onclick="jumpToLine(32,45)">Ir a</button> <button onclick="play(3)">Play</button>


1. Si multiplicamos dos señales de audio entre sí también obtendremos modulación RM.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: frecuencia Moduladora en Hz.


<br>

## 4. Síntesis AM <button onclick="jumpToLine(47,60)">Ir a</button> <button onclick="play(4)">Play</button>


1. Aplicando una componente DC a la señal Moduladora transformaremos dicha señal en Unipolar. 

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: frecuencia Moduladora en Hz.

3. El resultado será Síntesis AM.

4. La frecuencia de la Portadora (<b>f<sub>c</sub></b>) estará presente en el espectro resultante.

<br>


## 5. Índice de Modulación  <button onclick="jumpToLine(62,75)">Ir a</button> <button onclick="play(5)">Play</button>

1. Mediante la inclusión de un Índice de Modulación podremos controlar la magnitud de las bandas laterales, sin que esto afecte a la presencia de la componente Portadora.

2. Campos-p:

      - <b>p4</b>: amplitud en dBFS.

      - <b>p5</b>: frecuencia Portadora en Hz.

      - <b>p6</b>: Índice de Modulación.

      - <b>p7</b>: frecuencia Moduladora en Hz.

<br>
## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_am/Capitulo1/am_1.1/a/am_1.1-a.csd">Síntesis AM</a>

<br>

