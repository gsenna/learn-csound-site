---
layout: lessonTxt
---

# <center> Síntesis Sustractiva </center>

<br>

## 1. Filtros

1. Veremos como actúan sobre el ruido blanco los distintos filtros.

2. A un filtro se envía una señal de entrada, es decir el sonido que queremos modificar. 

3. Luego, podremos definir la operación del filtro. Esto es, cuáles frecuencias serán atenuadas. 

4. La señal filtrada se almacenará en una nueva variable de audio.

<br>

## 2. Filtros Pasa Bajos de 1<sup>er</sup> Orden.

1. El filtro pasa bajos es un filtro que atenúa las frecuencias superiores a la frecuencia de corte (Cf). Esta atenuación se hará según una determinada curva. Esta curva depende del orden del filtro.
      
      - <i>Si el filtro es de primer orden la curva de atenuación bajará <b>6 dB por octava</b><i>. 

2. Para filtrar el Ruido Blanco generado por <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> utilizaremos en nuestro <b>instrumento 2</b> el opcode <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a> como filtro pasa bajos. 

3. Dado una Cf de 300 Hz., obtendremos  la siguiente curva de atenuación:

<center>

<style>
.tablelines table, .tablelines td, .tablelines th {
        border: 1px solid gray;    border-spacing: 2px; 
        }
</style>

| Freq  |  Amp  |
| ----: | ----: |
| 300   |    0  |
| 600   |   -6  |
| 1200  |  -12  |
| 2400  |  -18  |
{: .tablelines}

</center>

<br>

## 3. Filtros Pasa Altos de 1<sup>er</sup> Orden.

1. El filtro pasa altos actúa de igual modo, pero atenúa en cambio las frecuencias inferiores a la frecuencia de corte (Cf).

2. Para filtrar el Ruido Blanco generado por <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> utilizaremos en nuestro <b>instrumento 3</b> el opcode <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a> como filtro pasa altos. 

3. Dado una Cf de 1000 Hz., obtendremos  la siguiente curva de atenuación:

<style>
.tablelinesa table, .tablelines td, .tablelines th {
        border: 1px solid gray;    border-spacing: 2px;
        }
</style>

<center>

| Freq  |  Amp  |
| ----: | ----: |
| 1000  |    0  |
|  500  |   -6  |
|  250  |  -12  |
|  125  |  -18  |
{: .tablelinesa}

</center>

<br>

## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.2/sustractiva_1.2.csd">Síntesis Sustractiva - Filtros de 1er Orden</a>

<br>
