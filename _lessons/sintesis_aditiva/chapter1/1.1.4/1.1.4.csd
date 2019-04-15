<CsoundSynthesizer>

<CsInstruments>

instr 1
; señal_de_control  linseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;       variable_k  linseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;      kEnvolvente  linseg     0,   p3/4,    1,     p3/2,    1,   p3/4,  0

; señal_de_control  expseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;       variable_k  expseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;      kEnvolvente  expseg  0.001,  p3/4,   1,   p3/2,    1,   p3/4,  0.001

; señal_de_control  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
;       variable_k  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
       kEnvolvente  transeg   0, p3/4,   -4,  1,   
                                 p3/2,    0,  1, 
                                 p3/4,   -4,  0
                                   
; señal_de_audio   oscils    amp, freq (<= 22050), fase (0 - 1)
;     variable_a   oscils    amp, freq (<= 22050), fase (0 - 1)
      aOscilador   oscils  10000,            1000,            0

;                   out    señal_de_audio (<= 32768)
                    out    aOscilador * kEnvolvente
endin

  
</CsInstruments>



<CsScore>
; instrucción_t    p1(0)       p2(bpm)     [p3 ...]
      t              0           120

; instrucción_t  p1(instr)   p2(t_ataque)   p3(dur.)   [p4 ...]
      i           1             0          0.4
      i           1           0.5         0.20 
      i           1          0.75         0.20   
      i           1             1         0.35
      i           1           1.5         0.35

      i           1           2.5         0.35
      i           1             3         0.35
</CsScore>



</CsoundSynthesizer>
