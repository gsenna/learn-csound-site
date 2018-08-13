<CsoundSynthesizer>

<CsInstruments>

; Header (Encabezado)
sr = 44100    ; tasa de muestreo. (kr * ksmps).   Por defecto, 44100.
ksmps = 10    ; nro. de muestras de audio por ciclo de control. (sr / kr). Por defecto, 10.
0dbfs = 1     ; valor de referencia máximo para la amplitud. Por defecto, 32768.
nchnls = 2    ; nro. de canales de salida. Por defecto, 1.


instr 1

; variables_i
  iAmp = ampdbfs(p4)
  iSemilla = 2         ; Ver puntos 3 y 4.
  
 
  
; Generador de Ruido Blanco: ver punto 2. 

;     variable_a     rand     amp,    [,   iseed      ... ]
            asig     rand    iAmp,       iSemilla
 
 
  
                      out    señal_de_audio (<= 0dbfs)
;                     out    a1  [,  a2 ... ]
                      out    asig, asig
endin


</CsInstruments>


<CsScore>
; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)
       i              1             0           3

</CsScore>



</CsoundSynthesizer>
