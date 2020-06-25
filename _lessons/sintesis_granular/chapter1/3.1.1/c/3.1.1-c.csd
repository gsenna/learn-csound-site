<CsoundSynthesizer>

<CsInstruments>

sr = 48000
ksmps = 1
nchnls = 2
0dbfs = 1

#define M_PARAM(PFIELD'PARAM_VAR') #
  kLow           poscil      p($PFIELD + 1),           1/p3,                   p($PFIELD + 2)
  kHigh          poscil      p($PFIELD + 4),           1/p3,                   p($PFIELD + 5)
  $PARAM_VAR     trandom     kTrigger,         kLow  + p($PFIELD),     kHigh + p($PFIELD + 3) 
#


seed 0

instr 1
  iInstr               =         2
  iStart               =         0
  iMinTimeEvent        =         0
  iMaxPolyphony        =         0
  
  iGrainRate           =         4
  iGrainDur            =        10
  iAmp                 =        16
  iFrq                 =        22
  iWaveFn              =        28
  iEnvFn               =        34
  iPanIndx             =        40
  iModRatio            =        46
  iModIndx             =        52

  kGrainRate         init        0

  kTrigger           metro       kGrainRate
   
$M_PARAM(iGrainRate ' kGrainRate')
$M_PARAM(iGrainDur  ' kGrainDur ')

  if (kGrainDur > 0) kgoto bypassDur
      kGrainDur        =         1 / kGrainRate

bypassDur:
$M_PARAM(iAmp       ' kAmp      ')
$M_PARAM(iFrq       ' kFrq      ')
$M_PARAM(iWaveFn    ' kWaveFn   ')
$M_PARAM(iEnvFn     ' kEnvFn    ')
$M_PARAM(iPanIndx   ' kPanIndx  ')
$M_PARAM(iModRatio  ' kModRatio ')
$M_PARAM(iModIndx   ' kModIndx  ')

#undef M_PARAM
                  
                     schedkwhen  kTrigger,       iMinTimeEvent,   iMaxPolyphony,       iInstr,            iStart,  \  
                                 kGrainDur,      kAmp,            kFrq,            int(kWaveFn),     int(kEnvFn),  \
                                 kPanIndx,       kModRatio,      kModIndx
 

endin

instr 2
  iFrq       =      p5
  iWaveFn    =      p6
  iEnvFn     =      p7
  iPanIndx   =      p8
  iFmRatio   =      p9
  iFmIndex   =     p10

  iAmp    ampdbfs   p4

  aMod     init      0
  
  aEnv    poscil  iAmp,        1 / p3,      iEnvFn
  

  if (iFmRatio == 0 || iFmIndex == 0) goto bypassFM  

    iModFreq   =       iFrq      /   iFmRatio 
    iModAmp    =       iModFreq  *   iFmIndex
    iModFn     =       1
    
    aMod     poscil    iModAmp,    iModFreq,     iModFn


bypassFM:
  aSig    poscil  aEnv,   iFrq + aMod,   iWaveFn
 
  aL, aR   pan2   aSig,   iPanIndx

           out    aL,     aR
endin

</CsInstruments>
<CsScore>
f  1     0   16384     10        1                                                 ; sinusoide
f  2     0   16384     10        1  0.5 0.3 0.25  0.2  0.167  0.14  0.125  0.111   ; diente de sierra
f  3     0   16384     10        1  0   0.3    0  0.2      0  0.14      0  0.111   ; cuadrada

f  4     0   16385      7        0  4000  1  8384      1  4000  0                  ; trapezoide
f  5     0   16385      5    0.001  4000  1  8384  0.001                           ; exponencial
f  6     0   16385     20        6     1                                           ; gaussiana
f  7     0   16385     20        2     1                                           ; Hanning
f  8     0   16385     20        3     1                                           ; Bartlett
f  9     0   16385     20        8     1                                           ; rectangular

f 10     0   16385     21        1     1


 
; p1  p2  p3 | p-low_min  p-low_range  p-low_fn | p-high_min  p-high_range p-high_fn 
i  1   0  10        20          0          9           400           0          9       \  ; grain rate
                  0.02          0          9          0.05           0          9       \  ; grain dur
                   -40          0          9           -20           0          9       \  ; amp
                   200        600          7           400         600          7       \  ; freq
                  1.00          0          9          1.99           0          9       \  ; wave fn
                  6.00          0          9          7.99           0          9       \  ; env  fn 
                     0          1          7             0           1          7       \  ; pan index 
                     1          0          9             1           0          9       \  ; FM Ratio c/m
                     0          0          9             0           0          9          ; FM Index


e 
 
</CsScore>


</CsoundSynthesizer>
