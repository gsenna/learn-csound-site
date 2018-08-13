<CsoundSynthesizer>

<CsOptions>
-W -odac
</CsOptions>

<CsInstruments>
;noise.orc
	sr=44100
	kr=4410
	ksmps=10
	nchnls=1

	instr	1
a1 	rand 	p4
	out 	a1
	endin
	
		instr   3    ;FILTRO PASA-ALTOS
a1   	rand    p4
afilt	atone    a1,1000
		out     afilt
		endin
 

</CsInstruments>

<CsScore>
;noise.sco
i1 0 3 20000
i3 4 3 20000

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
