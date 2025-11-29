⍝ Cada pedaço de line é executado e armazenado em nums, como um vetor.
⍝ Cálcula-se o volume do Hexaedro, mais duas vezes as faces menores.
input ← ⎕FIO[49] 'input'

∇Z ← FeetRibbon line
	nums ← ⍎¨(∊('x'≠line))⊂line
	Z ← +/(×/nums)(2×nums[1⌷⍋nums])(2×nums[2⌷⍋nums])
∇

+/FeetRibbon¨input
)OFF
