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
    <th>Freq</th>
    <th>Amp</th>
  </tr>
  <tr>
    <td>300</td>
    <td>0</td>
  </tr>
    <tr>
    <td>600</td>
    <td>-6</td>
  </tr>
  <tr>
    <td>1200</td>
    <td>-12</td>
  </tr>
  <tr>
    <td>2400</td>
    <td>-18</td>
  </tr>

</table>



<br>

## 3. Filtros Pasa Altos de 1<sup>er</sup> Orden.

1. El filtro pasa altos actúa de igual modo, pero atenúa en cambio las frecuencias inferiores a la frecuencia de corte (Cf).

2. Para filtrar el Ruido Blanco generado por <a href="http://www.csounds.com/manual/html/rand.html"><i>rand</i></a> utilizaremos en nuestro <b>instrumento 3</b> el opcode <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a> como filtro pasa altos. 

3. Dado una Cf de 1000 Hz., obtendremos  la siguiente curva de atenuación:

<table id="atenuacion">
  <tr>
    <th>Freq</th>
    <th>Amp</th>
  </tr>
  <tr>
    <td>1000</td>
    <td>0</td>
  </tr>
    <tr>
    <td>500</td>
    <td>-6</td>
  </tr>
  <tr>
    <td>250</td>
    <td>-12</td>
  </tr>
  <tr>
    <td>125</td>
    <td>-18</td>
  </tr>
</table>

<br>

## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.2/sustractiva_1.2.csd">Síntesis Sustractiva - Filtros de 1er Orden</a>

<br>
