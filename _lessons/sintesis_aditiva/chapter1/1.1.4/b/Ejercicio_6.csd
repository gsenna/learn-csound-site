<CsoundSynthesizer>

<CsInstruments>

instr 1

; variable_de_control   linseg      va     dur1     vb     [dur2     vc     ...] 
                kEnv    linseg       0,    p3/4,     1,     p3/2,     1,   p3/4,      0

; variable_de_audio     oscils      amp(0-32768)      freq(20-20000)      fase(0-1) 
             aOsc1      oscils            10000,                440,             0
             aOsc2      oscils        10000 / 2,            440 * 2,             0
             aOsc3      oscils        10000 / 3,            440 * 3,             0
             aOsc4      oscils        10000 / 4,            440 * 4,             0

;                         out                  variable_de_audio
                          out     (aOsc1 + aOsc2 + aOsc3 + aOsc4) / 4 * kEnv

endin

</CsInstruments>

<CsScore>
; instrucción-i        p1(instr)         p2(comienzo)         p3(dur)         [ ... ] 
       i                    1                  0                  5
       i                    1                  5                  3
</CsScore>

</CsoundSynthesizer>
