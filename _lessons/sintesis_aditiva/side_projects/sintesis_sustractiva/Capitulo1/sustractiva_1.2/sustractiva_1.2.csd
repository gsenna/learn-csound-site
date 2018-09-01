<CsoundSynthesizer>

<CsInstruments>


instr 1 ; Ruido Blanco

; variables_i
  iAmp = p4
  iSemilla = 2

; Generador de Ruido Blanco
  asig     rand    iAmp,       iSemilla
  
            out    asig
endin



instr 2 ; Ruido Blanco filtrado con pasa bajos

; variables_i
  iAmp = p4
  iSemilla = 2

; Generador de Ruido Blanco
   asig     rand    iAmp,       iSemilla
  
; Filtro pasa bajos aplicado a la señal asig.
;  afilt    tone      a1,            kCf
   afilt    tone    asig,            300   ; La Freq de Corte es 300Hz.


; Salida de la señal filtrada.
            out    afilt
endin



instr 3 ; Ruido Blanco filtrado con pasa altos

; variables_i
  iAmp = p4
  iSemilla = 2

; Generador de Ruido Blanco
   asig     rand    iAmp,       iSemilla
  
; Filtro pasa altos aplicado a la señal asig.
;  afilt   atone      a1,            kCf
   afilt   atone    asig,           1000   ; La Freq de Corte es 1000Hz.


; Salida de la señal filtrada.
            out    afilt
endin



</CsInstruments>


<CsScore>
; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)   p4(amp)
       i              1             0           3       10000
       i              2             4           3       10000
       i              3             8           3       10000

</CsScore>



</CsoundSynthesizer>
