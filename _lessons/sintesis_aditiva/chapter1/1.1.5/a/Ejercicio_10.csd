<CsoundSynthesizer>

<CsInstruments>

instr 1
; variables_i
       iFreq         =             p5
       iFase         =             p6

;  variable_i     ampdbfs     amp(dBFS)
        iAmp      ampdbfs          p4

;  variable_k     linseg      va     dur1     vb     [dur2     vc     ...] 
        kEnv      linseg       0,    p3/4,     1,     p3/2,     1,   p3/4,      0

;  variable_a     oscils      amp(0-32768)      freq(20-20000)      fase(0-1) 
       aOsc1      oscils             iAmp,              iFreq,         iFase
       aOsc2      oscils         iAmp / 2,          iFreq * 2,         iFase
       aOsc3      oscils         iAmp / 3,          iFreq * 3,         iFase
       aOsc4      oscils         iAmp / 4,          iFreq * 4,         iFase

;                          out                  variable_de_audio
                           out     (aOsc1 + aOsc2 + aOsc3 + aOsc4) / 4 * kEnv

endin

</CsInstruments>

<CsScore>
; instrucción-i    p1(instr)     p2(start)     p3(dur)     p4(dBFS)     p5(freq)     p6(fase) 
       i                1             0            3          -12           880           0
</CsScore>

</CsoundSynthesizer>
