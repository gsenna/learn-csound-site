; Abrir y cerrar la sección de código de Csound.
; Usar tags: <CsoundSynthesizer> y </CsoundSynthesizer>
<CsoundSynthesizer>

; Abrir y cerrar la subsección de la Orquesta.
<CsInstruments>

instr 1

; variable_de_audio     oscils      amp(0-32768)      freq(20-20000)      fase(0-1) 
         aOscilador     oscils            10000,                440,             0

;                         out     variable_de_audio
                          out            aOscilador

endin

</CsInstruments>


</CsoundSynthesizer>