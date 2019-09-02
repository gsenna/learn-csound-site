<CsoundSynthesizer>

<CsInstruments>

instr 2
; variables_i
        iFrq         =            p5
       iWfFt         =            p6
      iAmpFt         =            p7
      iFrqFt         =            p8

;  variable_i     ampdbfs    amp(dBFS)
        iAmp      ampdbfs         p4

;  variable_a     poscil         amp       freq          fn
        kAmp      poscil        iAmp,      1/p3,     iAmpFt
        kFrq      poscil        iFrq,      1/p3,     iFrqFt
        aOsc      poscil        kAmp,      kFrq,      iWfFt

;    a1    a2      pan2      variable_a        pos(L:0-R:1) 


;                   out      variable_a        
                    out         aOsc
endin

</CsInstruments>

  
<CsScore>
; instru.   p1(fn)   p2(start)  p3(tamaño)  p4(GEN)  [                  ...                   ]
    f          1           0        8192       10      1    0.5    0.33   0.25   0.2
    f          2           0        8193        7      0   2048     1     4097    1   2048   0
    f          3           0        8193       -5    0.5   2048     1     4097    1   2048   2

; instru. p1(instr)  p2(start)   p3(dur)   p4(dBFS)   p5(Freq)  p6(WfFt)  p7(AmpFt)  p8(FrqFt)   p9(PanFt)
    i          2          0          3        -12        440        1          2          3
</CsScore>

  
</CsoundSynthesizer>
