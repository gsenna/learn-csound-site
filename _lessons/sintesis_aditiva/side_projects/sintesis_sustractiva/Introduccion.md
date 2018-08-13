---
layout: lessonTxt
---

# <center> Síntesis Sustractiva </center>


La síntesis sustractiva es un método de síntesis de sonido en el que los parciales de una señal de audio (a menudo un sonido rico en armónicos) son atenuados por un filtro para alterar el timbre del sonido. Mientras que la síntesis sustractiva se puede aplicar a cualquier señal de audio, el sonido más comúnmente asociado con la técnica es el de los sintetizadores analógicos de los años 1960 y 1970, en los que los armónicos de formas de onda simples como diente de sierra, pulso u ondas cuadradas se atenúan con un filtro pasa-bajos resonante controlado por voltaje. Muchos sintetizadores digitales, virtuales analógicos y de software usan síntesis sustractiva, a veces en conjunción con otros métodos de síntesis de sonido. [<a href="https://es.wikipedia.org/wiki/S%C3%ADntesis_substractiva">1</a>]

<br>
<hr>
<br>

## 1. Ruido Blanco

1. La síntesis sustractiva nace de la idea de poder crear un sonido nuevo restando amplitud a algunos componentes de sonido, más complejo de aquel que se va a obtener, por medio del uso de filtros. 

      - <i>Un <b>filtro</b> es un dispositivo que deja pasar ciertas frecuencias mejor que otras.</i>

2. Comenzaremos viendo cómo obtener ruido blanco con Csound. Usaremos la unidad generadora <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> la cual requiere un solo argumento obligatorio: la amplitud. Esto es así porque al obtener todas las frecuencias audibles juntas <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> no requiere definición de una frecuencia particular.

3. Sin embargo, debemos aclarar que debido a que las computadoras no son capaces de producir azar verdadero, si corremos nuestro ejemplo varias veces obtendremos de <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> siempre los mismos valores de amplitud. Esto es así porque, en un proceso conocido como <i>pseudo-azar</i>, las computadoras generan la ilusión del azar a partir de la selección de valores desde una lista muy grande de valores.

4. Como una posible solución a este inconveniente podemos hacer uso del primer parámetro opcional de <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a>. Éste nos permitirá especificar el primer valor desde el que parte <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> en la lectura de dicha lista. A este valor se lo conoce como la <i>semilla</i>.

      - <i>Un valor mayor a 1 como argumento para la <b>semilla</b> hará que <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> utilice el reloj de la computadora para derivar su primer valor.

<br>

## Bibliografía

1. <a href="https://es.wikipedia.org/wiki/S%C3%ADntesis_substractiva"><i>Síntesis Sustractiva - Wikipedia</i></a>
2. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Introduccion.csd">Síntesis Sustractiva - Ruido Blanco</a>

<br>
