<CsoundSynthesizer>

<CsOptions>
-W -odac
</CsOptions>

<CsInstruments>

;filtros,  fc siempre a 1000 hz

    sr = 44100
    kr = 4410
    ksmps = 10
    nchnls = 1

         instr   1    ;pasa-bajo
a1       rand    20000
afilt    tone    a1,1000
         out     afilt
         endin

         instr   2    ;pasa-alto
a1       rand    20000
afilt    atone   a1,1000
         out     afilt  
         endin    

          instr    3    ;pasa-alto II orden
a1        rand     20000
afilt     atone    a1,1000
afilt2    atone    afilt,1000
          out      afilt2
          endin

          instr    4    ;pasa-bajo III orden
a1        rand    20000
afilt     tone    a1,1000
afilt2    tone    afilt,1000
afilt3    tone    afilt2,1000
          out     afilt3
          endin


</CsInstruments>

<CsScore>
i1	0	3
i2	4	3
i3	8	3
i4	12	3


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
