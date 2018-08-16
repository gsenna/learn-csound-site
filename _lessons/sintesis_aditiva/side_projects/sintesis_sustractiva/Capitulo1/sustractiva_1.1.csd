<CsoundSynthesizer>

<CsInstruments>

instr 1

; variables_i
  iAmp = p4
  iSemilla = 2         ; Ver puntos 3 y 4.
  
 
  
; Generador de Ruido Blanco: ver punto 2. 

;     variable_a     rand     amp,    [,   iseed      ... ]
            asig     rand    iAmp,       iSemilla
 
 
  
;                     out     señal_de_audio (<= 0dbfs)
;                     out     a1    [,  a2 ... ]
                      out     asig,   asig
endin


</CsInstruments>


<CsScore>
; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)   p4(amp)
       i              1             0           3       10000

</CsScore>



</CsoundSynthesizer>
