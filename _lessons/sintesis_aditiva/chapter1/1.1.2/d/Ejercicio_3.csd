; Abrir y cerrar la sección de código de Csound.
; Usar tags: <CsoundSynthesizer> y </CsoundSynthesizer>
<CsoundSynthesizer>

; Abrir y cerrar la subsección de la Orquesta.
<CsInstruments>

Instr 1

; variable_de_audio     oscils      amp(0-32768)      freq(20-20000)      fase(0-1) 
         aOscilador     oscils            10000,                440              0

;                         out     variable_de_audio
                          out            aoscilador

endin

</CsInstruments>

; Abrir y cerrar la subsección de la Partitura.
<CsScore>
; instrucción-i        p1(instr)         p2(comienzo)         p3(dur)         [ ... ] 
       i                    3                  0                  2


<CsScore>

</CsoundSynthesizer>
