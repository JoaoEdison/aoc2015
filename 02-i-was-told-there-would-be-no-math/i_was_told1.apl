⍝ O arquivo input é lido com FIO[49], que retorna o arquivo como um vetor de linhas aninhadas.
⍝ Para cada linha em res, computa a função Sum e faz uma redução por soma.
⍝ A função Sum separa a linha por 'x', cada pedaço é atribuído a uma variável independente.
⍝ Para converter para número a string é executada.
⍝ 'areas' recebe um vetor com as áreas.
⍝ 'min' recebe a menor área.
⍝ Cálcula-se a área do Hexaedro de face quadrangular e soma-se aux.
⍝ Boxing ativa a visualização dos dados no console.
⍝]BOXING 8
input ← ⎕FIO[49] 'input'

∇Z ← SqrFeetWrappingPaper line
	nums ← (∊('x'≠line))⊂line
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
