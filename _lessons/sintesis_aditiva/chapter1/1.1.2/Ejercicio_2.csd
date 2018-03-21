<CsoundSynthesizer>

<CsInstruments>

Instr 1
; señal_de_audio oscils   amp, freq (<= 22050), fase (0 - 1)
;     variable_a oscils   amp, freq (<= 22050), fase (0 - 1)
      aOscilador oscils 10000,             440            0
;                 out   señal_de_audio (<= 32768)
                  out   aoscilador
endin

</CsInstruments>


<CsScore>
; sentencia_t    p1(0)      p2(bpm)     [p3 p4 ...]
;      t            0          60

; sentencia_i  p1(instr)  p2(comienzo)   p3(dur.)   [p4 ...]
      i             3           0           1
      i             3           4           1

<CsScore>


</CsoundSynthesizer>
