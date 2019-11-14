---
layout: lessonTxt
---

<div class="paginationDiv">
<div class="pagination">
  <a href="#">&laquo;</a>
  <a class="active" href="#">1</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.1/b/', 'sustractiva_1.1-b.html','sustractiva_1.1-b.csd', false)" href="javascript:void(0);">2</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.1/c/', 'sustractiva_1.1-c.html','sustractiva_1.1-c.csd', false)" href="javascript:void(0);">3</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.1/d/', 'sustractiva_1.1-d.html','sustractiva_1.1-d.csd', false)" href="javascript:void(0);">4</a>
  <a onclick="loadOnClick('{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.1/b/', 'sustractiva_1.1-b.html','sustractiva_1.1-b.csd', false)" href="javascript:void(0);">&raquo;</a>
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
      csd = "<CsScore>\na 0 0 12\n i 1 12 3 -12\ne";
    else if (i == 2)
      csd = "<CsScore>\na 0 0 12\n i 2 12 3 -12\ne";
    else if (i == 3)
      csd = "<CsScore>\na 0 0 12\n i 3 12 3 -12\ne";
    else if (i == 4)
      csd = "<CsScore>\na 0 0 12\n f 1 12 8192 10 1\n i 4 12 3 -12\ne";
    var txt = editor.getValue();
    txt = txt.replace(/<CsScore>/, csd);

     csound.stop();
     csound.Csound.setOption("-r" + window.parent.csound.Csound.getaudioContext().sampleRate);
     csound.CompileCsdText(txt);
 	 csound.Play();
}

</script>


## 1. Ruido Blanco  <button onclick="jumpToLine(4,16)">Ir a</button> <button onclick="play(1)">Play</button>

1. Usaremos la unidad generadora <a href="http://www.csounds.com/manual/html/rand.html"><b>rand</b></a>. La misma posee un solo parámetro obligatorio: amplitud. A diferencia de un oscilador, no es necesario configurar una frecuencia particular debido a que el ruido blanco supone una distribución igual de energía a lo largo de todo el espectro.

2. Debido a que las computadoras no son capaces de producir azar verdadero, si corremos nuestro ejemplo varias veces obtendremos siempre de <a href="http://www.csounds.com/manual/html/rand.html"><b>rand</b></a> los mismos valores de amplitud. 

3. Para subsanar este inconveniente podemos hacer uso del segundo parámetro (opcional) de <a href="http://www.csounds.com/manual/html/rand.html"><b>rand</b></a>, el cual nos permitirá especificar la <i>semilla</i>.

      - <i>Un valor mayor a 1 como argumento para la <i>semilla</i> hará que <a href="http://www.csounds.com/manual/html/rand.html"><b>rand</b></a> utilice el reloj de la computadora para derivar su primer valor.

<br>

## 2. Ruido Rosa  <button onclick="jumpToLine(17,27)">Ir a</button> <button onclick="play(2)">Play</button>


1. El opcode <a href="http://www.csounds.com/manual/html/pinkish.html"><b>pinkish</b></a> permite generar ruido rosa, es decir, rudio con una distribución de energía igual en cada octava.

2. Posee varios parámetros, pero obligatoriamente sólo demanda de un argumento: amplitud.

3. Por defecto la semilla es derivada del reloj del sistema automáticamente.


<br>

## 3. Tren de Impulsos  <button onclick="jumpToLine(29,42)">Ir a</button> <button onclick="play(3)">Play</button>


1. El opcode <a href="http://www.csounds.com/manual/html/mpulse.html"><b>mpulse</b></a> permite generar un tren de impulsos, separados entre sí a un intervalo igual al segundo argumento que pasemos (segundos). La amplitud de cada impulso será igual al primer argumento y tendrá una duración igual a una sola muestra de audio.

2. El tren de impulsos resultante no posee una banda espectral limitada.


<br>


## 4. Tren de Pulsos  <button onclick="jumpToLine(44,57)">Ir a</button> <button onclick="play(4)">Play</button>

1. El opcode <a href="http://www.csounds.com/manual/html/buzz.html"><b>buzz</b></a> permite generar un tren de pulsos de banda limitada mediante la adición de un conjunto de parciales de tipo coseno. El tren de pulsos resultante poseerá una amplitud igual al primer argumento que pasemos. El segundo argumento permitirá configurar la frecuencia fundamental de la serie.

2. El tercer parámetro del opcode <a href="http://www.csounds.com/manual/html/buzz.html"><b>buzz</b></a> refiere al número total de armónicos computados. Siempre que pasemos como argumento un valor menor a "sr/2/freq.fund." el resultado será un tren de pulsos de banda limitada.

3. El cuarto parámetro es obligatorio y demanda de una tabla que contenga una onda seno. Se recomienda un tamaño igual o mayor a 8192 puntos.


<br>
## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.1.csd">Síntesis Sustractiva - Ruido Blanco</a>

<br>

