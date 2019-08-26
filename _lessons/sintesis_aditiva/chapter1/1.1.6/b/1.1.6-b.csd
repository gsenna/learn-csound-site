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


;                   out      variable_a        
                    out         aOsc
endin

</CsInstruments>

  
<CsScore>
; instru.   p1(fn)   p2(start)  p3(tamaño)  p4(GEN)  [                  ...                   ]
    f          1           0        8192       10      1    0.5    0.33   0.25   0.2





</CsScore>

  
</CsoundSynthesizer>
