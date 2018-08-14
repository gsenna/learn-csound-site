<CsoundSynthesizer>

<CsInstruments>

; Header (Encabezado)
sr = 44100    ; tasa de muestreo. (kr * ksmps).   Por defecto, 44100.
ksmps = 10    ; nro. de muestras de audio por ciclo de control. (sr / kr). Por defecto, 10.
0dbfs = 1     ; valor de referencia máximo para la amplitud. Por defecto, 32768.
nchnls = 2    ; nro. de canales de salida. Por defecto, 1.


instr 1 ; Ruido Blanco

; variables_i
  iAmp = ampdbfs(p4)
  iSemilla = 2

; Generador de Ruido Blanco
  asig     rand    iAmp,       iSemilla
  
            out    asig,       asig
endin



instr 2 ; Ruido Blanco filtrado con pasa bajos

; variables_i
  iAmp = ampdbfs(p4)
  iSemilla = 2

; Generador de Ruido Blanco
   asig     rand    iAmp,       iSemilla
  
; Filtro pasa bajos aplicado a la señal asig.
;  afilt    tone      a1,            kCf
   afilt    tone    asig,            300   ; La Freq de Corte es 300Hz.


; Salida de la señal filtrada.
            out    afilt,       afilt
endin



instr 3 ; Ruido Blanco filtrado con pasa altos

; variables_i
  iAmp = ampdbfs(p4)
  iSemilla = 2

; Generador de Ruido Blanco
   asig     rand    iAmp,       iSemilla
  
; Filtro pasa altos aplicado a la señal asig.
;  afilt   atone      a1,            kCf
   afilt   atone    asig,           1000   ; La Freq de Corte es 1000Hz.


; Salida de la señal filtrada.
            out    afilt,       afilt
endin



</CsInstruments>


<CsScore>
; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)   p4(amp en db)
       i              1             0           3            -12
       i              2             4           3            -12
       i              3             7           3            -12

</CsScore>



</CsoundSynthesizer>
