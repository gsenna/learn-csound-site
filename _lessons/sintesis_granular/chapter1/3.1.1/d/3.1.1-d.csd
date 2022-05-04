<CsoundSynthesizer>
<CsInstruments>

instr 1
  ktrans linseg   1, 5, 2, 10, -2
  a1     diskin2 "fox.wav", ktrans, 0, 1, 0, 32
           out    a1
endin

</CsInstruments>
<CsScore>
i 1 0 15
</CsScore>
</CsoundSynthesizer>