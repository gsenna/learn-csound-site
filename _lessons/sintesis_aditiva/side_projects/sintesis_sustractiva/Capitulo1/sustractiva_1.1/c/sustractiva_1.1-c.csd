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




; ------------
;  PASA BAJOS
; ------------

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


instr 3 ; Ruido Blanco filtrado con dos pasa bajos en cascada.
; variable_i
   iSemilla          =             2

       iAmp        ampdbfs        p4

; Generador de Ruido Blanco
       asig         rand        iAmp,       iSemilla
  
; Filtros pasa bajos aplicado a la señal asig.
;     afilt         tone          a1,          kCf
      afilt         tone        asig,          440   ; La Freq de Corte es 440Hz.
      afilt         tone       afilt,          440   ; La Freq de Corte es 440Hz.

; Salida de la señal filtrada.
                     out       afilt
endin


instr 4 ; Ruido Blanco filtrado con tres pasa bajos en cascada.
; variable_i
   iSemilla          =             2

       iAmp        ampdbfs        p4

; Generador de Ruido Blanco
       asig         rand        iAmp,       iSemilla
  
; Filtros pasa bajos aplicado a la señal asig.
;     afilt         tone          a1,          kCf
      afilt         tone        asig,          440   ; La Freq de Corte es 440Hz.
      afilt         tone       afilt,          440   ; La Freq de Corte es 440Hz.
      afilt         tone       afilt,          440   ; La Freq de Corte es 440Hz.

; Salida de la señal filtrada.
                     out       afilt
endin






; ------------
;  PASA ALTOS
; ------------

instr 5 ; Ruido Blanco filtrado con pasa altos
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


instr 6 ; Ruido Blanco filtrado con dos pasa altos en cascada.
; variable_i
   iSemilla          =             2

       iAmp        ampdbfs        p4

; Generador de Ruido Blanco
       asig         rand        iAmp,       iSemilla
  
; Filtro pasa altos aplicado a la señal asig.
;     afilt        atone          a1,          kCf
      afilt        atone        asig,         1000   ; La Freq de Corte es 1000Hz.
      afilt        atone        afilt,        1000   ; La Freq de Corte es 1000Hz.

; Salida de la señal filtrada.
                     out       afilt
endin


instr 7 ; Ruido Blanco filtrado con tres pasa altos en cascada.
; variable_i
   iSemilla          =             2

       iAmp        ampdbfs        p4

; Generador de Ruido Blanco
       asig         rand        iAmp,       iSemilla
  
; Filtro pasa altos aplicado a la señal asig.
;     afilt        atone          a1,          kCf
      afilt        atone        asig,         1000   ; La Freq de Corte es 1000Hz.
      afilt        atone        afilt,        1000   ; La Freq de Corte es 1000Hz.
      afilt        atone        afilt,        1000   ; La Freq de Corte es 1000Hz.

; Salida de la señal filtrada.
                     out       afilt
endin



</CsInstruments>


<CsScore>
; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)   p4(amp)
       i              1             0           2        -12
       i              2             3           2        -12
       i              3             6           2        -12
       i              4             9           2        -12
       i              1            12           2        -12
       i              5            15           2        -12
       i              6            18           2        -12
       i              7            21           2        -12

</CsScore>



</CsoundSynthesizer>
