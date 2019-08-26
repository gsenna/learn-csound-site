<CsoundSynthesizer>

<CsInstruments>

instr 2
;  variable_i     ampdbfs    amp(dBFS) 
        iAmp      ampdbfs         p4

;  variable_k     linseg      va     dur1     vb      [dur2     vc       ...] 
        kEnv      linseg       0,    p3/4,   iAmp,     p3/2,   iAmp,    p3/4,      0

;  variable_a     poscil     amp     freq     fn      fase
        aOsc      poscil    kEnv,     p5,     p6,       p7

;                   out       variable_a
                    out          aOsc
endin

</CsInstruments>

<CsScore>
; instrucción-f   p1(fn)   p2(start)   p3(tamaño)   p4(GEN)   [              ...              ]
       f             1          0          8192         10      1    0.5    0.33   0.25   0.2

; instrucción-i  p1(instr) p2(start)    p3(dur)     p4(dBFS)    p5(freq)     p6(fn)    p7(fase)
       i              2         0           3          -12         440           1          0
</CsScore>

</CsoundSynthesizer>