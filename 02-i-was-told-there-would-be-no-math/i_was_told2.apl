⍝ Each element of line is interpreted and then they are assigned to nums as an
⍝ array.
⍝ Calculates the volume of the hexaedron plus two times the smallest faces.
input ← ⎕FIO[49] 'input'

∇Z ← FeetRibbon line
	nums ← ⍎¨(∊('x'≠line))⊂line
	Z ← +/(×/nums)(2×nums[1⌷⍋nums])(2×nums[2⌷⍋nums])
∇

+/FeetRibbon¨input
)OFF
