<CsoundSynthesizer>

<CsInstruments>


instr 1 ; Ruido Blanco

; variables_i
  iAmp = p4
  iSemilla = 2

; Generador de Ruido Blanco
  asig     rand    iAmp,       iSemilla
  
            out    asig
endin





; ------------
;  PASA BANDA
; ------------

instr 2 ; Ruido Blanco filtrado con pasa banda

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtro pasa banda aplicado a la señal asig.
;  afilt    reson      a1,       xCf,     xbw
   afilt    reson    asig,      1800,     400

             out   afilt/18
endin


instr 3 ; Ruido Blanco filtrado con pasa banda de IV orden.

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtro pasa banda aplicado a la señal asig.
;  afilt    reson      a1,       xCf,     xbw
   afilt    reson    asig,      1800,     400
   afilt2   reson    afilt,     1800,     400

; Debemos incrementar el coeficiente de atenuación. 
             out   afilt2/900
endin





; ---------------------
;  PASA BANDA DINÁMICOS
; ---------------------

instr 4 ; Pasa banda de IV orden y ancho de banda variable.

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Control de bw:     va,        dur,      vb
   kbw    expseg   1000,       p3-1,       1,     
                                  1,       1     
; Filtro pasa banda aplicado a la señal asig.
;  afilt    reson      a1,       xCf,     xbw
   afilt    reson    asig,       800,     kbw
   afilt2   reson   afilt,       800,     kbw

             out   afilt/450
endin


instr 5 ; Igual al instr 4, pero con variación dinámica del coeficiente.

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Control de bw:        va,        dur,         vb
      kbw    expseg   1000,       p3-1,          1,
                                     1,          1
                                     
; Con esta señal compensaremos el incremento de la amplitud 
; mientras se estrecha el ancho de banda. 
; Control del coef.:     va,        dur,           vb
    kcoef    expseg   100,       p3-1,            600,
                                    1,            600
                         
; Filtro pasa banda aplicado a la señal asig.
;  afilt    reson      a1,       xCf,     xbw
   afilt    reson    asig,       800,     kbw
   afilt2   reson   afilt,       800,     kbw

             out   afilt/kcoef
endin



instr 6 ; Pasa banda de IV  orden con glissando.

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Control de Cf:        va,        dur,          vb
      kCf   expseg      50,         p3,       10000          

                      
; Filtro pasa banda aplicado a la señal asig.
;  afilt    reson      a1,       xCf,     xbw
   afilt    reson    asig,       kCf,       1
   afilt2   reson   afilt,       kCf,       1

             out   afilt/3000
endin



; ------------------------------
;  PASA BANDA CON REESCALAMIENTO
; ------------------------------



instr 7 ; Reescalamiento usando la amplitud de pico.

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtro pasa banda aplicado a la señal asig.
;  afilt    reson      a1,       xCf,     xbw      [,   iscl]
   afilt    reson    asig,      1800,     400,             1


             out   afilt
endin


instr 8 ; Reescalamiento usando la amplitud RMS.

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtro pasa banda aplicado a la señal asig.
;  afilt    reson      a1,       xCf,     xbw      [,   iscl]
   afilt    reson    asig,      1800,     400,             2


             out   afilt
endin



instr 9 ; Reescalamiento usando el opcode balance (RMS).

  iAmp = p4
  iSemilla = 2

  asig     rand    iAmp,       iSemilla
  
; Filtro pasa banda aplicado a la señal asig.
;  afilt    reson      a1,       xCf,     xbw
   afilt    reson    asig,      1800,     400
   
;       ares    balance     asig,      acomp
   abalanced    balance    afilt,       asig


             out   abalanced
endin



</CsInstruments>


<CsScore>
; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)   p4(amp)
       i              1             0           2       10000
       i              2             3           2       10000
       i              3             6           2       10000
       i              4             9           2       10000
       i              5            12           2       10000
       i              6            15           2       10000
       i              7            18           2       10000
       i              8            21           2       10000
       i              9            24           2       10000

</CsScore>



</CsoundSynthesizer>
