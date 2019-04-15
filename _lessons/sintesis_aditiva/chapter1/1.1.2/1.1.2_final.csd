<CsoundSynthesizer>

<CsInstruments>

instr 1
; señal_de_audio oscils   amp, freq (<= 22050), fase (0 - 1)
;     variable_a oscils   amp, freq (<= 22050), fase (0 - 1)
      aOscilador oscils 10000,             440,            0
;                 out   señal_de_audio (<= 32768)
                  out   aOscilador
endin

</CsInstruments>

<CsScore>
; instrucción_t      p1(0)      p2(bpm)     [p3 p4 ...]
;      t               0           60
; instrucción_i   p1(instr)   p2(comienzo)   p3(dur.) [p4 ...]
       i               1            0           3
       i               1            4           3

  
</CsScore>

</CsoundSynthesizer>
