---
layout: lessonTxt
---

# <center> Síntesis Sustractiva </center>

<br>

## 1. Filtros de Orden Superior

1. Un filtro de <i>segundo orden</i> atenúa <b>-12 dB por octava</b>; uno de <i>tercer orden</i>, <b>-18 dB/oct</b>; etc.

2. Estos casos se realizan conectando varios filtros en serie, es decir que la salida del primero es filtrada nuevamente por otro filtro igual y con la misma <i>f</i><sub>c</sub>. A esta configuración también se la conoce como "<i>filtros en cascada</i>".

3. Los instrumentos en nuestro código nos permitirán demostrar el filtrado de ruido blanco con filtros pasa bajos y pasa altos, aumentando el nro. de orden en una secuencia. Las notas en nuestro <i>score</i> activarán por dos segundos a los siguientes instrumentos:

      - <i> PASA BAJOS </i>
      
      - 1) <b>instr 1</b>: ruido blanco.
      
      - 2) <b>instr 2</b>: ruido blanco filtrado con un único filtro pasa bajos <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a>

      - 3) <b>instr 3</b>: ruido blanco filtrado con dos filtros pasa bajos <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a> en serie.

      - 4) <b>instr 4</b>: ruido blanco filtrado con tres filtros pasa bajos <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a> en serie.
     
      - <i> PASA ALTOS </i>
      
      - 5) <b>instr 1</b>: ruido blanco.
      
      - 6) <b>instr 5</b>: ruido blanco filtrado con un único filtro pasa altos <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a>

      - 7) <b>instr 6</b>: ruido blanco filtrado con dos filtros pasa altos <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a> en serie.

      - 8) <b>instr 7</b>: ruido blanco filtrado con tres filtros pasa altos <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a> en serie.

<br>

## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.3/sustractiva_1.3.csd">Síntesis Sustractiva - Filtros de Orden Superior</a>

<br>