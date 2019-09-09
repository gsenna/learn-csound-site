---
layout: lessonTxt
---

# <center> Síntesis Sustractiva </center>

<br>

<script> 
function jumpToLine(init, end) { 
 editor.setSelection({line: init, ch:0}, {line: end});
 editor.scrollIntoView({line: init-2, ch:0});
}

 
function play(i) {
    var csd = ""
    if (i == 1)
      csd = "<CsScore>\na 0 0 11\n i 1 11 3 -12\ne";
    else if (i == 2)
      csd = "<CsScore>\na 0 0 11\n i 2 11 3 -12\ne";
    else if (i == 3)
      csd = "<CsScore>\na 0 0 11\n i 3 11 3 -12\ne";
    
    var txt = editor.getValue();
    txt = txt.replace(/<CsScore>/, csd);

     csound.stop();
     csound.Csound.setOption("-r" + window.parent.csound.Csound.getaudioContext().sampleRate);
     csound.CompileCsdText(txt);
 	 csound.Play();
}

</script>

## 1. Ruido Blanco.  <button onclick="jumpToLine(5,16)">Ir a</button> <button onclick="play(1)">Play</button>

1. Para generar Ruido Blanco utilizaremos el opcode <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a>.

<br>

## 2. Filtros Pasa Bajos de 1<sup>er</sup> Orden.  <button onclick="jumpToLine(19,36)">Ir a</button> <button onclick="play(2)">Play</button>

1. Para filtrar el Ruido Blanco generado por <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> utilizaremos en nuestro <b>instrumento 2</b> al opcode <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a> como filtro pasa bajos. 

2. La atenuación realizada por el filtro se hará siguiendo una pendiente determinada (<i>rolloff</i>). La profundidad de la misma dependerá del orden del filtro.
      
      - <i>Si el filtro es de primer orden la pendiente generará ganancias de <b>-6 dB por octava</b><i> hacia la derecha. 


3. En verdad, cada filtro posee su propia curva de atenuación. Dado una <i>f</i><sub>c</sub> de 440 Hz., obtendremos con el opcode <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a> los siguientes valores:


<style>
#atenuacion {
    border-collapse: collapse;
    margin-left: auto;
    margin-right: auto;
}

#atenuacion td, #atenuacion th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: right;

}

#atenuacion tr:nth-child(even){background-color: #f2f2f2;}

#atenuacion tr:hover {background-color: #ddd;}

#atenuacion th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #A9A9A9;
    color: white;
}
</style>

<table id="atenuacion">
  <tr>
    <th>Freq (Hz)</th>
    <th>Amp (dB)</th>
  </tr>
  <tr>
    <td>440</td>
    <td>-3.0</td>
  </tr>
    <tr>
    <td>880</td>
    <td>-7.0</td>
  </tr>
  <tr>
    <td>1760</td>
    <td>-12.3</td>
  </tr>
  <tr>
    <td>3520</td>
    <td>-18.0</td>
  </tr>

</table>



<br>

## 3. Filtros Pasa Altos de 1<sup>er</sup> Orden. <button onclick="jumpToLine(39,57)">Ir a</button> <button onclick="play(3)">Play</button>

1. Para filtrar el Ruido Blanco generado por <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> utilizaremos en nuestro <b>instrumento 3</b> el opcode <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a> como filtro pasa altos. 

2. El filtro pasa altos actúa de igual modo, pero atenuando en cambio las frecuencias que estén a la izquierda en el espectro.


      - <i>Si el filtro es de primer orden la pendiente generará ganancias de <b>-6 dB por octava</b><i> hacia la izquierda. 


3. Dado una <i>f</i><sub>c</sub> de 1000 Hz., obtendremos la siguiente curva de atenuación:

<table id="atenuacion">
  <tr>
    <th>Freq (Hz)</th>
    <th>Amp (dB)</th>
  </tr>
  <tr>
    <td>1000</td>
    <td></td>
  </tr>
    <tr>
    <td>500</td>
    <td></td>
  </tr>
  <tr>
    <td>250</td>
    <td></td>
  </tr>
  <tr>
    <td>125</td>
    <td></td>
  </tr>
</table>

<br>

## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.2/sustractiva_1.2.csd">Síntesis Sustractiva - Filtros de 1er Orden</a>

<br>
