<CsoundSynthesizer>

<CsInstruments>
; Espacio Global
;        * Código adentro de <CsInstruments>, pero sin ser parte de la definición de un instr.

; Header (Encabezado) 
sr       =     48000    ; sampling rate o tasa de muestreo. (kr * ksmps).
;kr      =        48    ; ciclos de control por segundo. (sr / ksmps).
ksmps    =      1000    ; tamaño del bloque de audio. (sr / kr).


instr 1

;  variable_k     linseg      va     dur1     vb     [dur2     vc     ...] 
        kEnv      linseg       0,     0.1,     1,      0.8,     1,    0.1,      0

;  variable_a     oscils      amp(0-32768)      freq(20-20000)      fase(0-1) 
        aOsc      oscils            10000,                440,             0

;                          out    variable_de_audio
                           out       aOsc * kEnv
endin

</CsInstruments>

<CsScore>
; instrucción-i    p1(instr)     p2(start)     p3(dur)
       i                1             0            1
</CsScore>

</CsoundSynthesizer>
