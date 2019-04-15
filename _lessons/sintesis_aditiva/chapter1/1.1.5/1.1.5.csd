<CsoundSynthesizer>

<CsInstruments>

instr 1

; variable_i
  iFreq = 880
  iAmp = 10000
  
; señal_de_control  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
;       variable_k  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
              kEnv  transeg   0, p3/4,   -4,  1,   
                                 p3/2,    0,  1, 
                                 p3/4,   -4,  0
                                   
; señal_de_audio   oscils    amp, freq (<= 22050), fase (0 - 1)
;     variable_a   oscils    amp, freq (<= 22050), fase (0 - 1)
           aOsc1   oscils  iAmp,            iFreq,            0
           aOsc2   oscils  iAmp/2,      iFreq * 2,            0
           aOsc3   oscils  iAmp/3,      iFreq * 3,            0
           aOsc4   oscils  iAmp/4,      iFreq * 4,            0
           aOsc5   oscils  iAmp/5,      iFreq * 5,            0
           aOsc6   oscils  iAmp/6,      iFreq * 6,            0
           aOsc7   oscils  iAmp/7,      iFreq * 7,            0
           aOsc8   oscils  iAmp/8,      iFreq * 8,            0

;                   out    señal_de_audio (<= 32768)
                    out    (aOsc1 + aOsc2 + aOsc3 + aOsc4 + 
                            aOsc5 + aOsc6 + aOsc7 + aOsc8  ) * kEnv
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
