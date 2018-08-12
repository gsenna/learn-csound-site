<CsoundSynthesizer>

<CsInstruments>
; Espacio Global: 
;           * todo código en la Orq. que esté afuera de la def. de un instrumento. 
;           * trabaja en tiempo-i. Ignora operaciones en el bucle de performance.
;           * es el lugar en donde se configuran las constantes simbólicas de sistema.

;kVar = 42    ; Esta operación va a ser ignorada por Csound.
;kVar init 42 ; Válido, aunque poco útil.
;iVar = 42     ; Asignación en tiempo-i. Inaccesible desde dentro de un instrumento!

; HEADER (Encabezado)
sr = 48000    ; tasa de muestreo (kr * ksmps). Por defecto, 44100
; kr = 4800   ; tasa de control (sr / ksmps).  Por defecto, 4410.
ksmps =  10   ; nro. de muestras de audio por ciclo de control (sr / kr). Por defecto, 10.
0dbfs = 1     ; valor de referencia máximo para la amplitud. Por defecto, 32768.
nchnls = 2    ; canales de salida. Por defecto, 1.


instr 1
; variable_i
  iAmp = ampdbfs(p4)
  iFreq = p5
  
; señal_de_control  linseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;       variable_k  linseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;      kEnvolvente  linseg     0,   p3/4,    1,     p3/2,    1,   p3/4,  0

; señal_de_control  expseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;       variable_k  expseg    va,   dur1,   vb  [,  dur2,  vc, ...]
;      kEnvolvente  expseg  0.001,  p3/4,   1,   p3/2,    1,   p3/4,  0.001

; señal_de_control  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
;       variable_k  transeg  va, dur1, tpo1, vb [, dur2, tpo2, vc ...]
             kEnv  transeg   0, p3/4,    4,  1,   
                                p3/2,    0,  1, 
                                p3/4,   -4,  0

; Envolvente con segmentos rápidos: puede producir zipper noise. 
;             kEnv  transeg   0,       .1,    5,  1, 
;                                 p3 - .2,    0,  1, 
;                                      .1,   -5,  0
  
  
; Trayectoria para el paneo.
              kPan  linseg     0,   p3,    1     

  
  
; señal_de_audio   oscils    amp, freq (<= sr/2), fase (0 - 1)
;     variable_a   oscils    amp, freq (<= sr/2), fase (0 - 1)
           aOsc1   oscils  iAmp,            iFreq,            0
           aOsc2   oscils  iAmp/2,      iFreq * 2,            0
           aOsc3   oscils  iAmp/3,      iFreq * 3,            0
           aOsc4   oscils  iAmp/4,      iFreq * 4,            0

;         a1, a2    pan2    asig,   kpos    [, imodo]
          aL, aR    pan2   (aOsc1 + aOsc2 + aOsc3 + aOsc4) * kEnv,  kPan

;                   out    señal_de_audio (<= 0dbfs)
;                   out    a1  [,  a2 ... ]
                    out    aL,     aR
endin

  
</CsInstruments>


<CsScore>
; instrucción_t    p1(0)       p2(bpm)     [p3 ...]
;      t              0           120

; instrucción_i  p1(instr)   p2(t_ataque)   p3(dur.)      p4(amp)      p5(freq)
       i              1             0           3           -12          440
;       i              1             6           3

</CsScore>



</CsoundSynthesizer>
