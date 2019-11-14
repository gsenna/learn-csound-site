;Adaptado de:

;Author: Steven Yi
;Date: 2019.10.13

;Description:

;Complex FM (4 operator, what Chowning and Bristow calls Parallel Carrier,
;Independent Modulator in "FM Theory and Applications"). The two operator stacks
;are using 4:2 and 1:1 C:M ratios. expseg envelopes are used to modulate the
;overall shape of indices and unipolar square lfo's are used for an additional
;layer of modulation. I thought the 12 and 3 Hertz for the lfo's gave some nice
;texture between the two layers.

;I think it probably works best in the low end to middle of the frequency range.
;The result using pch of 5.00 reminded me of things heard in some progressive
;house tracks. I experimented with various octaves, individually and together,
;and left the schedule calls below.

<CsoundSynthesizer>

<CsInstruments>

sr	=	48000
ksmps	=	1
0dbfs	=	1
nchnls  =   2


instr 1
; variables_i
  iFreq       =       p4
  iFm1        =       iFreq * 2
  iFc1        =       iFreq * 4
  iFm2        =       iFreq
  iFc2        =       iFreq
  
    iAmp   ampdbfs    p5
  
  kIEnv1    expseg      .008,   1,   8,   p3 - 1,   .0008   
   kLFO1     lfo      kIEnv1,  12,   3
  
  kIEnv2    expseg      .016,   1,  16,   p3 - 1,   .0016   
   kLFO2     lfo      kIEnv2,   3,   3

  
    aMod1    poscil        kLFO1  * iFm1,             iFm1,        1
    aPor1    poscil          iAmp *  0.5,     iFc1 + aMod1,        1

    aMod2    poscil        kLFO2  * iFm2,             iFm2,        1
    aPor2    poscil                 iAmp,     iFc2 + aMod2,        1

 
     kEnv   expseg   .001, 1, 1,  p3 - 1, .001

   aL, aR    pan2    (aPor1 + aPor2) * kEnv,   kEnv
  
             out         aL,       aR 
endin

</CsInstruments>
; ==============================================
<CsScore>
f 1 0 16384 10 1

i 1 0  2  523.261 -16
i 1 0  4  261.626 -16
i 1 0  6  130.813 -15
i 1 0  8   65.406 -15
i 1 0 10   32.703 -14


</CsScore>
</CsoundSynthesizer>

