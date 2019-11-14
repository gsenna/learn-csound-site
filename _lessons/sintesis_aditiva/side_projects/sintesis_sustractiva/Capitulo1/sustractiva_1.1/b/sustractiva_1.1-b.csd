<CsoundSynthesizer>

<CsInstruments>


instr 1 ; Ruido Blanco
; variable_i
   iSemilla          =             2

       iAmp        ampdbfs        p4

; Generador de Ruido Blanco
       asig         rand        iAmp,       iSemilla
  
                     out        asig
endin



instr 2 ; Ruido Blanco filtrado con pasa bajos
; variable_i
   iSemilla          =             2

       iAmp        ampdbfs        p4

; Generador de Ruido Blanco
       asig         rand        iAmp,       iSemilla
  
; Filtro pasa bajos aplicado a la señal asig.
;     afilt         tone          a1,          kCf
      afilt         tone        asig,          440   ; La Freq de Corte es 440Hz.


; Salida de la señal filtrada.
                     out       afilt
endin



instr 3 ; Ruido Blanco filtrado con pasa altos
; variable_i
   iSemilla          =             2

       iAmp        ampdbfs        p4

; Generador de Ruido Blanco
       asig         rand        iAmp,       iSemilla
  
; Filtro pasa altos aplicado a la señal asig.
;     afilt        atone          a1,          kCf
      afilt        atone        asig,         1000   ; La Freq de Corte es 1000Hz.


; Salida de la señal filtrada.
                     out       afilt
endin



</CsInstruments>


<CsScore>
; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)   p4(amp)
       i              1             0           3         -12
       i              2             4           3         -12
       i              3             8           3         -12

</CsScore>



</CsoundSynthesizer>
