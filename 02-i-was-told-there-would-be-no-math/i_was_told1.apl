#!/usr/local/bin/apl -s

⍝ File is read by FIO[49], that returns the file as a vector of lines.
⍝ For each line in input, call SqrFeetWrappingPaper and do a reduce by sum.
⍝ The SqrFeetWrappingPaper first split the line by the character 'x', each
⍝   piece is assigned to one variable.
⍝ To do the cast the string is interpreted.
⍝ 'areas' get a array with areas.
⍝ 'min' get smallest area.
⍝ Calculate the area of the hexahedron with square faces and sum 'min'.
⍝ Boxing turns on box data visualization in console.

)COPY ../base_structures/utils.apl


input ← ⎕FIO[49] 'input'

∇Z ← SqrFeetWrappingPaper line
	nums ← 'x' Split line
	fir ← ⍎1 ⊃ nums
	sec ← ⍎2 ⊃ nums
	thi ← ⍎3 ⊃ nums
	areas ← (fir×sec) (sec×thi) (thi×fir)
	min ← areas[1⌷⍋areas]
	Z ← min+2×+/areas
∇

⍝y ← SqrFeetWrappingPaper¨(1 8⍴(4 2 ⍴ input))[1;]
+/ (SqrFeetWrappingPaper¨input)

)OFF
