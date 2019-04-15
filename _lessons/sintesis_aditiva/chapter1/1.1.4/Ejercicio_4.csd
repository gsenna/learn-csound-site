<CsoundSynthesizer>

<CsInstruments>

instr 1
; variable_i
  iFreq = 680
  
; señal_de_control  linseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;       variable_k  linseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;      kEnvolvente  linseg     0,   p3/4,    1,     p3/2,    1,   p3/4,  0

; señal_de_control  expseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;       variable_k  expseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;      kEnvolvente  expseg  0.001,  p3/4,   1,   p3/2,    1,   p3/4,  0.001

; señal_de_control  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
;       variable_k  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
              kEnv  transeg   0, p3/4,   -4,  1,   
                                 p3/2,    0,  1, 
                                 p3/4,   -4,  0
                                   
; señal_de_audio   oscils    amp, freq (<= 22050), fase (0 - 1)
;     variable_a   oscils    amp, freq (<= 22050), fase (0 - 1)
           aOsc1   oscils  10000,          iFreq,            0
           aOsc2   oscils  10000,      iFreq * 2,            0
           aOsc3   oscils  10000,      iFreq * 3,            0
           aOsc4   oscils  10000,      iFreq * 4,            0

;                   out    señal_de_audio (<= 32768)
                    out    (aOsc1 + aOsc2 + aOsc3 + aOsc4) / 4 * kEnv
endin

  
</CsInstruments>



<CsScore>
; instrucción_t    p1(0)       p2(bpm)     [p3 ...]
;      t              0           120

; instrucción_t  p1(instr)   p2(t_ataque)   p3(dur.)   [p4 ...]
       i              1             0           3
       i              1             6           3

</CsScore>



</CsoundSynthesizer>
