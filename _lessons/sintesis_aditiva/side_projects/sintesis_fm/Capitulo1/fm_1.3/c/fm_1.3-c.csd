<CsoundSynthesizer>

<CsInstruments>

sr	=	48000
ksmps	=	1
0dbfs	=	1
nchnls  =   2


instr 1 ; FM con Moduladoras en Paralelo
; variables_i
  iFreq       =       p4
  iFm1        =       iFreq * 2
  iFm2        =       iFreq * 4
   iFc        =       iFreq
  
    iAmp   ampdbfs    p5
  
    kEnv    expseg      .001,   1,   1,   p3 - 1,    .001
  
  kIEnv1    expseg      .008,   1,   1,   p3 - 1,   .0008   
   kLFO1     lfo      kIEnv1,  12
  
  kIEnv2    expseg      .016,   1,   2,   p3 - 1,   .0016   
   kLFO2     lfo      kIEnv2,   3
  
    aMod1    poscil        kLFO1  * iFm1,                   iFm1,        1
    aMod2    poscil        kLFO2  * iFm2,                   iFm2,        1
     aPor    poscil                 iAmp,    iFc + aMod1 + aMod2,        1

   aL, aR    pan2      aPor * kEnv,  kEnv
  ;aL, aR  reverbsc   aL, aR, 0.85, 12000, sr, 0.5, 1

              out         aL,       aR 
endin

instr 2 ; FM con Moduladoras en Serie
; variables_i
  iFreq       =       p4
  iFm1        =       iFreq * 2
  iFm2        =       iFreq * 4
   iFc        =       iFreq
  
    iAmp   ampdbfs    p5
  
    kEnv    expseg      .001,   1,   1,   p3 - 1,    .001
  
  kIEnv1    expseg      .008,   1, 0.5,   p3 - 1,   .0008   
   kLFO1     lfo      kIEnv1,  12
  
  kIEnv2    expseg      .016,   1,   1,   p3 - 1,   .0016   
   kLFO2     lfo      kIEnv2,   3
  
    aMod1    poscil        kLFO1  * iFm1,                   iFm1,        1
    aMod2    poscil        kLFO2  * iFm2,           iFm2 + aMod1,        1
     aPor    poscil                 iAmp,            iFc + aMod2,        1

   aL, aR    pan2      aPor * kEnv,  kEnv
  ;aL, aR  reverbsc   aL, aR, 0.85, 12000, sr, 0.5, 1

              out         aL,       aR 
endin


</CsInstruments>
; ==============================================
<CsScore>
f 1 0 16384 10 1

i 1    0   8 660 -16
i 1  1.6   7 550 -14
i 1  3.2 7.5 440 -20

i 2   10   8 660 -16
i 2 11.6   7 550 -14
i 2 13.2 7.5 440 -20


</CsScore>
</CsoundSynthesizer>



