---
layout: lessonTxt
---

<div class="paginationDiv">
<div class="pagination">
  <a href="#">&laquo;</a>
  <a class="active" href="#">1</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.2/b/', 'sustractiva_1.2-b.html','sustractiva_1.2-b.csd', false)" href="javascript:void(0);">2</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.2/c/', 'sustractiva_1.2-c.html','sustractiva_1.2-c.csd', false)" href="javascript:void(0);">3</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.2/d/', 'sustractiva_1.2-d.html','sustractiva_1.2-d.csd', false)" href="javascript:void(0);">4</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.2/b/', 'sustractiva_1.2-b.html','sustractiva_1.2-b.csd', false)" href="javascript:void(0);">&raquo;</a>
</div>
</div>
<br style="display: block; content: ''; margin-top: 20px;">
<hr>
<br style="display: block; content: ''; margin-top: 40px;">

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
      csd = "<CsScore>\na 0 0 26\n i 1 26 2 -12\ne";
    else if (i == 2)
      csd = "<CsScore>\na 0 0 26\n i 2 26 2 -12\ne";
    else if (i == 3)
      csd = "<CsScore>\na 0 0 26\n i 3 26 2 -12\ne";
    else if (i == 4)
      csd = "<CsScore>\na 0 0 26\n i 4 26 2 -12\ne";
    else if (i == 5)
      csd = "<CsScore>\na 0 0 26\n i 5 26 2 -12\ne";
    else if (i == 6)
      csd = "<CsScore>\na 0 0 26\n i 6 26 2 -12\ne";
    else if (i == 7)
      csd = "<CsScore>\na 0 0 26\n i 7 26 2 -12\ne";
    else if (i == 8)
      csd = "<CsScore>\na 0 0 26\n i 8 26 2 -12\ne";
    else if (i == 9)
      csd = "<CsScore>\na 0 0 26\n i 9 26 2 -12\ne";
    
    var txt = editor.getValue();
    txt = txt.replace(/<CsScore>/, csd);

     csound.stop();
     csound.Csound.setOption("-r" + window.parent.csound.Csound.getaudioContext().sampleRate);
     csound.CompileCsdText(txt);
 	 csound.Play();
}

</script>


## 1. Filtros Pasa Banda

1. Un filtro pasa banda permite atenuar tanto las frecuencias superiores como las inferiores con respecto a una determinada banda de frecuencias. Para excitar el filtro podemos usar Ruido Blanco. <button onclick="jumpToLine(5,17)">Ir a</button> <button onclick="play(1)">Play</button>

2. Esto se puede obtener en Csound utilizando el opcode <a href="http://www.csounds.com/manual/html/reson.html"><i>reson</i></a>, que es un filtro de 2<sup>do</sup> orden. Además de pasar como argumento la señal a filtrar, deberemos pasar tanto la <b>frecuencia central</b> (<i>Cf</i>) de la banda pasante como su <b>ancho de banda</b> (<i>bw</i>). <button onclick="jumpToLine(22,40)">Ir a</button> <button onclick="play(2)">Play</button>

3. Para crear filtros pasabanda de <b>cuarto orden</b> se puede conectar dos <a href="http://www.csounds.com/manual/html/reson.html"><i>reson</i></a> en serie. <button onclick="jumpToLine(42,58)">Ir a</button> <button onclick="play(3)">Play</button>

4. También es posible hacer un filtro dinámico variando en el tiempo: 

      - el <b>ancho de banda</b>. <button onclick="jumpToLine(63,85)">Ir a</button> <button onclick="play(4)">Play</button>
      
      - la <b>frecuencia central</b> (<i>= glissando</i>). <button onclick="jumpToLine(88,107)">Ir a</button> <button onclick="play(5)">Play</button>

<br>

## 2. Reescalamiento de un filtro resonante

1. Cuando restringimos cada vez más el ancho de banda, se escuchará cada vez más nítida la <i>Cf</i>, hasta obtener un efecto similar a una sinusoide. Pero en un filtro resonante, al aumentar la relación <b>Cf</b> / <b>bw</b> también se amplificará la parte central de la señal. Por esta razón, deberemos reescalar la amplitud de la señal de salida. <button onclick="jumpToLine(111,137)">Ir a</button> <button onclick="play(6)">Play</button>

2. Esto puede lograrse de diversas maneras, detalladas a continuación: 

      - A) dividiendo la señal filtrada por algún coeficiente determinado (que habrá que obtener a prueba y error). <button onclick="jumpToLine(22,40)">Ir a</button> <button onclick="play(2)">Play</button>

      - B) invocando la opción de reescalamiento de <a href="http://www.csounds.com/manual/html/reson.html"><i>reson</i></a>, pasando el valor <b>1</b> como argumento para el cuarto parámetro (que es opcional). En este caso se reescala la amplitud de la señal de salida de modo tal que la amplitud de pico del sonido filtrado sea la misma que la de la señal de entrada. <button onclick="jumpToLine(142,163)">Ir a</button> <button onclick="play(7)">Play</button>

      - C) invocando la opción de reescalamiento de <a href="http://www.csounds.com/manual/html/reson.html"><i>reson</i></a>, pasando el valor <b>2</b> como argumento para el cuarto parámetro (que es opcional). En este caso se eleva la respuesta del filtro de modo tal que la amplitud en RMS sea igual a la de la entranda, asumiendo que en esta última se encuentran presentes todas las frecuencias. <button onclick="jumpToLine(165,180)">Ir a</button> <button onclick="play(8)">Play</button>
      
      - D) invocando al opcode <a href="http://www.csounds.com/manual/html/balance.html"><i>balance</i></a> para reescalar (RMS) la señal filtrada utilizando como comparador la señal original. Aunque a veces resulte inevitable, conviene saber que este opcode usando en tandem con el filtro puede alterar la respuesta en transiente resultante. <button onclick="jumpToLine(183,201)">Ir a</button> <button onclick="play(9)">Play</button>

<br>

## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.4/sustractiva_1.4.csd">Síntesis Sustractiva - Filtros Pasa Banda</a>

<br>
