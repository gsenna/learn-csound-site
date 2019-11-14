<CsoundSynthesizer>

<CsInstruments>

instr 1 ; Onda Portadora
; variables_i
    iAmp          =            p4
    iFc           =            p5

       iAmp         ampdbfs        p4

       aPor         poscil       iAmp,         iFc,          1

                      out        aPor
endin


instr 2 ; Sinusoide con Vibrato
; variables_i
    iAmp          =            p4
    iFc           =            p5
    iDepth        =            p6
    iRate         =            p7


       iAmp         ampdbfs        p4

       aMod         poscil     iDepth,        iRate,          1
       aPor         poscil       iAmp,     iFc+aMod,          1

                      out        aPor
endin


instr 3 ; Modelo Básico de FM
; variables_i
    iAmp          =            p4
    iFc           =            p5
    iDev          =            p6
    iFm           =            p7


       iAmp         ampdbfs        p4

       aMod         poscil       iDev,          iFm,          1
       aPor         poscil       iAmp,     iFc+aMod,          1

                      out        aPor
endin


instr 4 ; FM con control del Índice de Modulación
; variables_i
    iAmp          =            p4
    iFc           =            p5
    iIMod         =            p6
    iFm           =            p7


       iAmp         ampdbfs           p4

       aMod         poscil     iIMod*iFm,          iFm,          1
       aPor         poscil          iAmp,     iFc+aMod,          1

                      out           aPor
endin


instr 5 ; FM con Índice de Modulación y relación c:m
; variables_i
    iAmp          =            p4
    iFc           =            p5
    iIMod         =            p6
    iFm           =      iFc / p7


       iAmp         ampdbfs        p4

       aMod         poscil   iIMod*iFm,        iFm,          1
       aPor         poscil        iAmp,   iFc+aMod,          1

                      out        aPor
endin


</CsInstruments>


<CsScore>
; instr_f    p1(fn)      p2(start)  p3(tamaño) p4(GEN)  [    ...     ]
       f        1             0        8192        10         1



; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)
       i        1             0          3       -12      440

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc) p6(depth) p7(rate)
       i        2             4          3       -12      440      10        5

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(dev)   p7(fm)
       i        3             8          3       -12      440      100      220
       
; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(IMod)  p7(fm)
       i        4            12          3       -12      440     0.45      220

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(IMod) p7(c:m)
       i        5            16          3       -12      440     0.45        2

</CsScore>



</CsoundSynthesizer>
