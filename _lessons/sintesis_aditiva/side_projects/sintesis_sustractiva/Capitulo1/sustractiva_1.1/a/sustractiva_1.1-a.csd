<CsoundSynthesizer>

<CsInstruments>

instr 1
; variable_i
   iSemilla          =             2

       iAmp        ampdbfs        p4

;     variable_a     rand     amp,    [,   iseed      ... ]
            asig     rand    iAmp,       iSemilla

;                     out      a1
                      out     asig
endin

instr 2
  
       iAmp        ampdbfs        p4

;     variable_a     pinkish          amp
            asig     pinkish         iAmp

;                     out      a1
                      out     asig
endin


instr 3
; variable_i
  iIntervalo          =             1/440
  
       iAmp         ampdbfs          p4

;     variable_a    mpulse        amp,        kintvl
            asig    mpulse       iAmp,    iIntervalo

;                     out      a1
                      out     asig

endin


instr 4
; variable_i
    iNumArm           =              10

       iAmp         ampdbfs          p4

;     variable_a     buzz     amp,    xcps,        knh,      ifn
            asig     buzz    iAmp,     440,    iNumArm,        1

;                     out      a1
                      out     asig

endin

</CsInstruments>


<CsScore>
; instrucción_f    p1(fn)      p2(start) p3(tamaño)   p4(GEN)  [    ...     ]
       f               1            0        8192        10          1

; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)   p4(amp)
       i              1             0           3       -12
       i              2             3           3       -12
       i              3             6           3       -12
       i              4             9           3       -12

</CsScore>



</CsoundSynthesizer>
