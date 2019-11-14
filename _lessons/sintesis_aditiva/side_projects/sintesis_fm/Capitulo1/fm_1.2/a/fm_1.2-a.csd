<CsoundSynthesizer>

<CsInstruments>


instr 1 ; FM con Envolvente de Amplitud
; variables_i
    iAmp          =            p4
    iFc           =            p5
    iFm           =      iFc / p6 
    iIMod         =            p7
    iAmpFn        =            p8

       iAmp         ampdbfs        p4
       
       kEnv         poscil        iAmp,       1/p3,       iAmpFn

       aMod         poscil   iIMod*iFm,        iFm,          1
       aPor         poscil        kEnv,   iFc+aMod,          1

                      out        aPor
endin

instr 2 ; FM con Envolvente de Amplitud e IMAX
; variables_i
    iAmp          =            p4
    iFc           =            p5
    iFm           =      iFc / p6 
    iIMAX         =            p7
    iAmpFn        =            p8
    iIModFn       =            p9

       iAmp         ampdbfs        p4
       
       kEnv         poscil        iAmp,       1/p3,       iAmpFn
      kIMod         poscil       iIMAX,       1/p3,      iIModFn

       aMod         poscil   kIMod*iFm,        iFm,          1
       aPor         poscil        kEnv,   iFc+aMod,          1

                      out        aPor
endin

instr 3 ; FM con Envolvente de Amplitud, IMIN e IMAX
; variables_i
    iAmp          =            p4
    iFc           =            p5
    iFm           =      iFc / p6 
    iIMAX         =            p7
    iIMIN         =            p8
    iAmpFn        =            p9
    iIModFn       =            p10

       iAmp         ampdbfs        p4
       
       kEnv         poscil           iAmp,       1/p3,       iAmpFn
      kIMod         poscil    iIMAX-iIMIN,       1/p3,      iIModFn
      
      kIMod           =             kIMod          +          iIMIN

       aMod         poscil      kIMod*iFm,        iFm,          1
       aPor         poscil           kEnv,   iFc+aMod,          1

                      out        aPor
endin


</CsInstruments>


<CsScore>
; instr_f    p1(fn)      p2(start)  p3(tamaño) p4(GEN)  [          ...         ]
       f        1             0        8192        10    1
       f        2             0        8193         7    0 2048 1 4097 1 2048 0
       f        3             0        8193         7    0 8193 1

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(c:m) p7(IMod) p8(ampFn)
       i        1             0          3       -12      440       3       20        2

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(c:m) p7(IMAX) p8(ampFn) p9(IModFn)
       i        2             4          3       -12      440       3       20        2          3

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(c:m) p7(IMAX) p8(IMIN) p9(ampFn) p10(IModFn)
       i        3             8          3       -12      440       3       20       10        2           3

</CsScore>



</CsoundSynthesizer>
