; Abrir y cerrar la sección de código de Csound.
; Usar tags: <CsoundSynthesizer> y </CsoundSynthesizer>
<CsoundSynthesizer>

; Abrir y cerrar la subsección de la Orquesta.
<CsInstruments>

instr 1

; variable_de_control   linseg      va     dur1     vb     [dur2     vc     ...] 
;        kEnvolvente    linseg       0,    p3/4,     1,     p3/2,     1,   p3/4,      0

; variable_de_control   expseg      va     dur1     vb     [dur2     vc     ...] 
         kEnvolvente    expseg   0.001,    p3/4,     1,     p3/2,     1,   p3/4,  0.001

; variable_de_audio     oscils      amp(0-32768)      freq(20-20000)      fase(0-1) 
         aOscilador     oscils            10000,                440,             0

;                         out         variable_de_audio
                          out     aOscilador * kEnvolvente

endin

</CsInstruments>

; Abrir y cerrar la subsección de la Partitura.
<CsScore>
; instrucción-i        p1(instr)         p2(comienzo)         p3(dur)         [ ... ] 
       i                    1                  0                  5
       i                    1                  5                  3


</CsScore>

</CsoundSynthesizer>
