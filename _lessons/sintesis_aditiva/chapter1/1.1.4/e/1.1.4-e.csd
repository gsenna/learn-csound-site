<CsoundSynthesizer>

<CsInstruments>

instr 1

; variable_i     ampdbfs     amp(dBFS)
       iAmp      ampdbfs           -3

; variable_k     linseg      va     dur1     vb     [dur2     vc     ...] 
       kEnv      linseg       0,    p3/4,     1,     p3/2,     1,   p3/4,      0

; variable_a     oscils      amp(0-32768)      freq(20-20000)      fase(0-1) 
      aOsc1      oscils             iAmp,                440,             0
      aOsc2      oscils         iAmp / 2,            440 * 2,             0
      aOsc3      oscils         iAmp / 3,            440 * 3,             0
      aOsc4      oscils         iAmp / 4,            440 * 4,             0

;                         out                  variable_de_audio
                          out     (aOsc1 + aOsc2 + aOsc3 + aOsc4) / 4 * kEnv

endin

</CsInstruments>

<CsScore>
; instrucción-i        p1(instr)         p2(comienzo)         p3(dur)         [ ... ] 
       i                    1                  0                  3

</CsScore>

</CsoundSynthesizer>
