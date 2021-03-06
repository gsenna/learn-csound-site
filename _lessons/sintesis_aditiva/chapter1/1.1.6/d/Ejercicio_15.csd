<CsoundSynthesizer>

<CsInstruments>

instr 2
;  variables_i
         iFrq         =            p5
        iWfFt         =            p6
       iAmpFt         =            p7
       iFrqFt         =            p8

;   variable_i     ampdbfs    amp(dBFS)
         iAmp      ampdbfs         p4

;        -          seed     semilla(0-2^32) 
                    seed             0

; variables_ik     random    rango(min)   rango(max) 
      iDurDev      random          -p9,          p9
      kAmpDev      random         -p10,         p10
      kFrqDev      random         -p11,         p11

; variables_pk       =    * fórmula de crecimiento exponencial *
         p3          =             p3 * 2^(iDurDev/1000) 
      kAmpRnd        =           iAmp * 2^(kAmpDev/1000) 
      kFrqRnd        =           iFrq * 2^(kFrqDev/1000) 

;   variable_a     poscil         amp       freq          fn
         aAmp      poscil     kAmpRnd,      1/p3,     iAmpFt
         aFrq      poscil     kFrqRnd,      1/p3,     iFrqFt
         aOsc      poscil        aAmp,      aFrq,      iWfFt

;                   out      variable_a        
                    out         aOsc
endin

</CsInstruments>

  
<CsScore>
; instru.  p1(fn)   p2(start)  p3(tamaño) p4(GEN)  [                  ...                    ]
    f         1          0         8192       10      1    0.5    0.33   0.25   0.2
    f         2          0         8193        7      0   2048     1     4097    1   2048   0
    f         3          0         8193       -5    0.5   2048     1     4097    1   2048   2

;|--------------------------dBFS---Frq--|----------Tablas---------|----------%RndDev----------|
;| instru.  p1   p2    p3    p4     p5  |  p6(wf) p7(amp) p8(frq) | p9(dur) p10(amp) p11(frq) |
      i      2    0     2   -12    440         1      2       3       1000       0        0
      i      2    +     .     .      .         .      .       .          <       <        <
      i      2    +     .     .      .         .      .       .          0      20       40
</CsScore>

  
</CsoundSynthesizer>
