---
layout: lessonTxt
---

# <center> Síntesis Sustractiva </center>

<br>

## 1. Filtros Pasa Banda

1. Un filtro pasa banda permite atenuar tanto las frecuencias superiores como las inferiores con respecto a una determinada banda de frecuencias.

2. Esto se puede obtener en Csound utilizando el opcode <a href="http://www.csounds.com/manual/html/reson.html"><i>reson</i></a>, que es un filtro de 2<sup>do</sup> orden. Además de pasar como argumento la señal a filtrar, deberemos pasar tanto la <b>frecuencia central</b> (<i>Cf</i>) de la banda pasante como su <b>ancho de banda</b> (<i>bw</i>).

3. En un filtro de este tipo, las frecuencias que se encuentran a <b>una octava</b> de los extremos del ancho de banda se atenuarán en <i>-12 dB</i>, las que están a <b>dos octavas</b>, <i>-24 dB</i>, etc.

      - Para crear filtros pasabanda de <b>cuarto orden</b> se puede conectar dos <a href="http://www.csounds.com/manual/html/reson.html"><i>reson</i></a> en serie.
      
4. También es posible hacer un filtro dinámico variando en el tiempo tanto el <b>ancho de banda</b> como la <b>frecuencia central</b>, en cuyo caso se va a producir un glissando.

<br>

## 2. Reescalamiento de un filtro resonante

1. Cuando restringimos cada vez más el ancho de banda, se escuchará cada vez más nítida la <i>Cf</i>, hasta obtener un efecto similar a una sinusoide. En un filtro ideal a menor <b>ancho de banda</b> mayor será la atenuación de las frecuencias que están fuera de ella, pero siendo <a href="http://www.csounds.com/manual/html/reson.html"><i>reson</i></a> un filtro resonante, al aumentar la relación <b>Cf</b> / <b>bw</b> también se amplificará la parte central de la señal. Por esta razón, será necesario atenuar la amplitud de la señal de salida.

2. Esto puede lograrse de diversas maneras, detalladas a continuación: 

      - A) dividiendo la señal filtrada por algún coeficiente determinado (que habrá que obtener a prueba y error).

      - B) utlizando el tercer parámetro opcional de <a href="http://www.csounds.com/manual/html/reson.html"><i>reson</i></a>, invocando la opción de reescalamiento:
      
            - Si utilizamos aquí el valor 1: se reescala la amplitud de la señal de salida de modo tal que la amplitud de pico del sonido filtrado sea la misma que la de la señal de entrada.

            - En cambio, con el valor <b>2</b>: se reescala la amplitud de la señal de salida de modo tal que el valor eficaz (RMS) de la señal filtrada sea el mismo que el de la entrante.
      
      - C) También es posible utilizar el opcode <a href="http://www.csounds.com/manual/html/balance.html"><i>balance</i></a> para reescalar la señal utilizando como comparador a la señal original.

<br>

## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.4/sustractiva_1.4.csd">Síntesis Sustractiva - Filtros Pasa Banda</a>

<br>
