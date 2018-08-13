---
layout: lessonTxt
---

# <center> Síntesis Sustractiva </center>

<br>

## 1. Ruido Blanco

1. La síntesis sustractiva nace de la idea de poder crear un sonido nuevo restando amplitud a algunos componentes de un sonido-fuente, más complejo que aquel que se va a obtener, por medio del uso de filtros. 

      - <i>Un <b>filtro</b> es un dispositivo que deja pasar ciertas frecuencias mejor que otras.</i>

2. Comenzaremos viendo cómo obtener ruido blanco con Csound. Usaremos la unidad generadora <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> la cual requiere un solo argumento obligatorio: la amplitud. Esto es así porque al obtener todas las frecuencias audibles juntas <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> no requiere definición de una frecuencia particular.

3. Sin embargo, debemos aclarar que debido a que las computadoras no son capaces de producir azar verdadero, si corremos nuestro ejemplo varias veces obtendremos de <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> siempre los mismos valores de amplitud. Esto es así porque, en un proceso conocido como <i>pseudo-azar</i>, las computadoras generan la ilusión del azar a partir de la selección de valores desde una lista muy grande de valores.

4. Como una posible solución a este inconveniente podemos hacer uso del primer parámetro opcional de <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a>. Éste nos permitirá especificar el primer valor desde el que parte <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> en la lectura de dicha lista. A este valor se lo conoce como la <i>semilla</i>.

      - <i>Un valor mayor a 1 como argumento para la <b>semilla</b> hará que <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> utilice el reloj de la computadora para derivar su primer valor.

<br>

## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva//home/guille/Proyectos/CsoundOnlineCourse/learn-csound-site/_lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.1.csd">Síntesis Sustractiva - Ruido Blanco</a>

<br>
