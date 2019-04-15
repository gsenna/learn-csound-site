; 4b) 0.75
; 6) clipping.

<CsoundSynthesizer>

<CsInstruments>

instr 1
; señal_de_audio oscils   amp, freq (<= 22050), fase (0 - 1)
;     variable_a oscils   amp, freq (<= 22050), fase (0 - 1)
      aOscilador oscils 10000,             880,            0.25
;                 out   señal_de_audio (<= 32768)
                  out   aOscilador
endin

</CsInstruments>


<CsScore>
; sentencia_t    p1(0)       p2(bpm)     [p3 ...]
;      t            0          120

; sentencia_i  p1(instr)   p2(t_ataque)   p3(dur.)   [p4 ...]
      i           1             0           1
      i           1             1           2
      i           1             2           1
      i           1             3           2
      i           1             1           1

</CsScore>


</CsoundSynthesizer>
