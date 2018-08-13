<CsoundSynthesizer>

<CsInstruments>
; Espacio Global:
;    * todo código en la Orq. que esté afuera de la def. de un instrumento.
;    * es el lugar en donde se escribe el Header (Encabezado).
;    *                      * conjunto de constantes simbólicas de sistema.

; Header (Encabezado)
sr = 44100    ; tasa de muestreo. (kr * ksmps).   Por defecto, 44100.
; kr =  4410  ; tasa de control.  (sr / ksmps). Por defecto, 4410.
ksmps = 10    ; nro. de muestras de audio por ciclo de control. (sr / kr). Por defecto, 10.
0dbfs = 1     ; valor de referencia máximo para la amplitud. Por defecto, 32768.
nchnls = 2    ; nro. de canales de salida. Por defecto, 1.

instr 1
; variables_i
  iAmp = ampdbfs(p4)
  iFreq = p5
  
; señal_de_control  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
;       variable_k  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
              kEnv  transeg   0, p3/4,    4,  1,   
                                 p3/2,    0,  1, 
                                 p3/4,   -4,  0

; Envolvente con segmentos rápidos: puede producir zipper noise.
;              kEnv  transeg   0,      .1,    4,  1,   
;                                 p3 - .2,    0,  1, 
;                                      .1,   -4,  0
  
   
; señal_de_audio   oscils    amp, freq (<= sr/2), fase (0 - 1)
;     variable_a   oscils    amp, freq (<= sr/2), fase (0 - 1)
           aOsc1   oscils  iAmp,            iFreq,            0
           aOsc2   oscils  iAmp/2,      iFreq * 2,            0
           aOsc3   oscils  iAmp/3,      iFreq * 3,            0
           aOsc4   oscils  iAmp/4,      iFreq * 4,            0

; variable_a
       aSuma = (aOsc1 + aOsc2 + aOsc3 + aOsc4) * kEnv

; Trayectoria para el paneo en Stereo.
          kPos    linseg       0,        p3,       1

;        a1,  a2   pan2     asig,      xpos       [, imodo]
         aL,  aR   pan2    aSuma,      kPos
  
  
;                   out    señal_de_audio (<= 0dbfs)
;                   out    a1  [,  a2 ... ]
                    out    aL,  aR
endin

</CsInstruments>


<CsScore>
; instrucción_t    p1(0)       p2(bpm)     [p3 ...]
;      t              0           120

; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)     p4(amp.)     p5(freq.)
       i              1             0           3           -10          440
       i              1             2           2           -40          660

</CsScore>



</CsoundSynthesizer>
