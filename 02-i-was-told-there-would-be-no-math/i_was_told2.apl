#!/usr/local/bin/apl -s

⍝ Each element of line is interpreted and then they are assigned to nums as an
⍝ array.
⍝ Calculates the volume of the hexaedron plus two times the smallest faces.

)COPY ../base_structures/utils.apl


input ← ⎕FIO[49] 'input'

∇Z ← FeetRibbon line
	nums ← ⍎¨'x' Split line
	Z ← +/(×/nums)(2×nums[1⌷⍋nums])(2×nums[2⌷⍋nums])
∇

+/FeetRibbon¨input

)OFF
