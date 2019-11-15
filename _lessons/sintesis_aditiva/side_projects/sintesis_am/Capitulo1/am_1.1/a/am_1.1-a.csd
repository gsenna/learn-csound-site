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


instr 2 ; Síntesis RM
; variables_i
    iFc           =            p5
    iFm           =            p6


       iAmp         ampdbfs        p4

       aMod         poscil       iAmp,          iFm,          1
       aPor         poscil       aMod,          iFc,          1

                      out        aPor
endin


instr 3 ; Síntesis RM con Multiplicador
; variables_i
    iFc           =            p5
    iFm           =            p6


       iAmp         ampdbfs        p4

       aMod         poscil       iAmp,          iFm,          1
       aPor         poscil       iAmp,          iFc,          1

                      out        (aMod * aPor) / iAmp
endin


instr 4 ; Síntesis AM
; variables_i
    iFc           =            p5
    iFm           =            p6


       iAmp         ampdbfs          p4

       aMod         poscil         iAmp,        iFm,          1
       aPor         poscil  aMod + iAmp,        iFc,          1

                      out      aPor
endin


instr 5 ; Síntesis AM con Índice de Modulación
; variables_i
    iFc           =            p5
    iIMod         =            p6
    iFm           =            p7

       iAmp         ampdbfs          p4

       aMod         poscil iIMod * iAmp,        iFm,          1
       aPor         poscil  aMod + iAmp,        iFc,          1

                      out      aPor
endin



</CsInstruments>


<CsScore>
; instr_f    p1(fn)      p2(start)  p3(tamaño) p4(GEN)  [    ...     ]
       f        1             0        8192        10         1



; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)
       i        1             0          3       -12      440

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(fm)
       i        2             4          3       -12      440     200

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(fm)
       i        3             8          3       -12      440     200

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(fm)
       i        4            12          3       -18      440     200

; instr_i  p1(instr)   p2(t_ataque)  p3(dur)   p4(amp)  p5(fc)  p6(IMod)  p7(fm)
       i        5            16          3       -21      440       1       200


</CsScore>



</CsoundSynthesizer>
