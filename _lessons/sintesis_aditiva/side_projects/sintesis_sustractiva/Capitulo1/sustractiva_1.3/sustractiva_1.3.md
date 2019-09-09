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
      csd = "<CsScore>\na 0 0 23\n i 1 23 2 -12\ne";
    else if (i == 2)
      csd = "<CsScore>\na 0 0 23\n i 2 23 2 -12\ne";
    else if (i == 3)
      csd = "<CsScore>\na 0 0 23\n i 3 23 2 -12\ne";
    else if (i == 4)
      csd = "<CsScore>\na 0 0 23\n i 4 23 2 -12\ne";
    else if (i == 5)
      csd = "<CsScore>\na 0 0 23\n i 5 23 2 -12\ne";
    else if (i == 6)
      csd = "<CsScore>\na 0 0 23\n i 6 23 2 -12\ne";
    else if (i == 7)
      csd = "<CsScore>\na 0 0 23\n i 7 23 2 -12\ne";
    
    var txt = editor.getValue();
    txt = txt.replace(/<CsScore>/, csd);

     csound.stop();
     csound.Csound.setOption("-r" + window.parent.csound.Csound.getaudioContext().sampleRate);
     csound.CompileCsdText(txt);
 	 csound.Play();
}

</script>

## 1. Filtros de Orden Superior

1. Un filtro de <i>segundo orden</i> generará ganancias de <b>-12 dB por octava</b>; uno de <i>tercer orden</i>, <b>-18 dB/oct</b>; etc.

2. Para lograr esto podemos conectar varios filtros equivalentes en serie, es decir, de modo tal que la salida del primero sea filtrada luego por otro filtro igual y con la misma <i>f</i><sub>c</sub>. A esta configuración se la conoce también como "<i>filtros en cascada</i>".

3. Los instrumentos en esta página nos permitirán demostrar el filtrado de ruido blanco con filtros pasa bajos y pasa altos, incrementando sucesivamente el nro. de orden. Las notas en el <i>score</i> activarán por dos segundos a los siguientes instrumentos:

      - <i> PASA BAJOS </i>
      
      - 1) <b>instr 1</b>: ruido blanco. <button onclick="jumpToLine(5,16)">Ir a</button> <button onclick="play(1)">Play</button>
      
      - 2) <b>instr 2</b>: ruido blanco filtrado con un único filtro pasa bajos <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a>. <button onclick="jumpToLine(24,41)">Ir a</button> <button onclick="play(2)">Play</button>

      - 3) <b>instr 3</b>: ruido blanco filtrado con dos filtros pasa bajos <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a> en serie. <button onclick="jumpToLine(43,60)">Ir a</button> <button onclick="play(3)">Play</button>

      - 4) <b>instr 4</b>: ruido blanco filtrado con tres filtros pasa bajos <a href="http://www.csounds.com/manual/html/tone.html"><i>tone</i></a> en serie. <button onclick="jumpToLine(62,80)">Ir a</button> <button onclick="play(4)">Play</button>
     
      - <i> PASA ALTOS </i>
      
      - 5) <b>instr 1</b>: ruido blanco. <button onclick="jumpToLine(5,16)">Ir a</button> <button onclick="play(1)">Play</button>
      
      - 6) <b>instr 5</b>: ruido blanco filtrado con un único filtro pasa altos <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a>. <button onclick="jumpToLine(90,107)">Ir a</button> <button onclick="play(5)">Play</button>

      - 7) <b>instr 6</b>: ruido blanco filtrado con dos filtros pasa altos <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a> en serie. <button onclick="jumpToLine(109,126)">Ir a</button> <button onclick="play(6)">Play</button>

      - 8) <b>instr 7</b>: ruido blanco filtrado con tres filtros pasa altos <a href="http://www.csounds.com/manual/html/atone.html"><i>atone</i></a> en serie. <button onclick="jumpToLine(128,146)">Ir a</button> <button onclick="play(7)">Play</button>

<br>

## Bibliografía

1. CSD en el editor -> <a href="{{site.baseurl}}/lessons/sintesis_aditiva/side_projects/sintesis_sustractiva/Capitulo1/sustractiva_1.3/sustractiva_1.3.csd">Síntesis Sustractiva - Filtros de Orden Superior</a>

<br>
