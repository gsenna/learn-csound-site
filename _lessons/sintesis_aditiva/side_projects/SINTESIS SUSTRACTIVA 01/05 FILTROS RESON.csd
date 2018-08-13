<CsoundSynthesizer>

<CsOptions>
-W -odac
</CsOptions>

<CsInstruments>
;filtri.orc

    sr = 44100

    kr = 4410

    ksmps = 10

    nchnls = 1





         instr     5    ;pasa-banda

a1       rand    20000
afilt    reson   a1,1800,400
         out     afilt/18

         endin
         
         instr     6    ;pasa-banda con reescalamiento segun misma amplitud de pico

a1       rand    20000
afilt    reson   a1,1800,400,1
         out     afilt

         endin

         instr     7    ;pasa-banda con reescalamiento segun mismo RMS

a1       rand    20000
afilt    reson   a1,1800,400,2
         out     afilt

         endin

            instr     8    ;pasa-banda IV orden

a1           rand     5000
afilt        reson    a1,1800,400
afilt2       reson    afilt,1800,400
             out      afilt2/300

             endin



            instr     9    ;pasa-banda con ancho de banda variable

a1          rand     5000
k1          expseg   1000,p3-2,1,2,1     ; de 1000 a 1 en el tiempo p3 menos 2 seg. y permanece en 1 dos seg.
afilt       reson    a1,800,k1    ;el ancho de banda sigue la variable de control k1
afilt2      reson    afilt,800,k1
            out      afilt2/9000000

            endin


            instr     10    ;idem pero con envolvente de amplitud dividiendo la salida para poder oir el comienzo de la transición

a1          rand     5000
k1          expseg   1000,p3-1,1,1,1 ; el gliss. ahora ocupa p3 -1 seg    
k2          expseg   9000,p3-1,9000000,1,9000000 ; con esta envolvente compensamos el incremento de la amplitud mientras se estrecha el ancho de banda    
afilt       reson    a1,800,k1    
afilt2      reson    afilt,800,k1
            out      afilt2/k2 ; en este caso dividimos afilt2 por la envolvente k2

            endin

        instr     11    ;pasa-banda con glissando

a1      rand    5000
kfc     expseg    50,p3,10000          
afilt   reson    a1,kfc,1,2
afilt2  reson    afilt,kfc,1,2
        out     afilt2/10

        endin










</CsInstruments>

<CsScore>
i5	0	3
i6	4	3
i7	8	3
i8	12	3
i9	16	3
i10	20	3
i11	24	3

</CsScore>

</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
