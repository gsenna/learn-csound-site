<CsoundSynthesizer>

<CsInstruments>


instr 1 ; Ruido Blanco

; variables_i
  iAmp = p4
  iSemilla = 2

; Generador de Ruido Blanco
  asig     rand    iAmp,       iSemilla
  
            out    asig,       asig
endin





; ------------
;  PASA BAJOS
; ------------

instr 2 ; Ruido Blanco filtrado con pasa bajos

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtro pasa bajos aplicado a la señal asig.
;  afilt    tone      a1,            kCf
   afilt    tone    asig,            300   ; La Freq de Corte es 300Hz.

             out   afilt,     afilt
endin

instr 3 ; Ruido Blanco filtrado con 2 pasa bajos en cascada

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtros pasa bajos aplicado a la señal asig.
;  afilt    tone      a1,            kCf
   afilt    tone    asig,            300   ; La Freq de Corte es 300Hz.
  afilt2    tone   afilt,            300   ; La Freq de Corte es 300Hz.

             out  afilt2,     afilt2
endin

instr 4 ; Ruido Blanco filtrado con 3 pasa bajos en cascada

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtros pasa bajos aplicado a la señal asig.
;  afilt    tone      a1,            kCf
   afilt    tone    asig,            300   ; La Freq de Corte es 300Hz.
  afilt2    tone   afilt,            300   ; La Freq de Corte es 300Hz.
  afilt3    tone  afilt2,            300   ; La Freq de Corte es 300Hz.

             out  afilt3,     afilt3
endin






; ------------
;  PASA ALTOS
; ------------

instr 5 ; Ruido Blanco filtrado con pasa altos

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtro pasa altos aplicado a la señal asig.
;  afilt   atone      a1,            kCf
   afilt   atone    asig,           1000   ; La Freq de Corte es 1000Hz.

             out   afilt,     afilt
endin


instr 6 ; Ruido Blanco filtrado con 2 pasa altos en cascada.

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtros pasa altos aplicado a la señal asig.
;  afilt   atone      a1,            kCf
   afilt   atone    asig,           1000   ; La Freq de Corte es 1000Hz.
   afilt2  atone   afilt,           1000   ; La Freq de Corte es 1000Hz.

             out   afilt2,    afilt2
endin


instr 7 ; Ruido Blanco filtrado con 3 pasa altos en cascada.

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtros pasa altos aplicado a la señal asig.
;  afilt   atone      a1,            kCf
   afilt   atone    asig,           1000   ; La Freq de Corte es 1000Hz.
   afilt2  atone   afilt,           1000   ; La Freq de Corte es 1000Hz.
   afilt3  atone  afilt2,           1000   ; La Freq de Corte es 1000Hz.

             out   afilt3,    afilt3
endin



</CsInstruments>


<CsScore>
; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)   p4(amp)
       i              1             0           2       10000
       i              2             3           2       10000
       i              3             6           2       10000
       i              4             9           2       10000
       i              1            12           2       10000
       i              5            15           2       10000
       i              6            18           2       10000
       i              7            21           2       10000

</CsScore>



</CsoundSynthesizer>
