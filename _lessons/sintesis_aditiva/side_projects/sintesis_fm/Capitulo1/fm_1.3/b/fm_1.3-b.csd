<CsoundSynthesizer>

<CsInstruments>

sr	=	48000
ksmps	=	1
0dbfs	=	1
nchnls  =   2


instr 1
; variables_i
  iFreq       =       p4
   iFm        =       iFreq * 2
  iFc1        =       iFreq * 4
  iFc2        =       iFreq
  
    iAmp   ampdbfs    p5
  
    kEnv    expseg      .001,   1,   1,   p3 - 1,    .001
   kIEnv    expseg      .008,   1,   8,   p3 - 1,   .0008   
    kLFO     lfo       kIEnv,  p3/2
  
     aMod    poscil          kLFO  * iFm,                    iFm,        1
    aPor1    poscil                 iAmp,            iFc1 + aMod,        1
    aPor2    poscil                 iAmp,      iFc2 + aMod * 0.5,        1

   aL, aR    pan2    (aPor1 + aPor2) * kEnv,   kEnv
  ;aL, aR  reverbsc   aL, aR, 0.85, 12000, sr, 0.5, 1

              out         aL,       aR 
endin

</CsInstruments>
; ==============================================
<CsScore>
f 1 0 16384 10 1

i 1   0   8 330 -16
i 1 1.6   7 550 -14
i 1 3.2 7.9 440 -16


</CsScore>
</CsoundSynthesizer>
