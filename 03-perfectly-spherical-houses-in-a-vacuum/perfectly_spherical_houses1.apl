⍝ Transforma as direcoes em expoentes e eleva i para cada expoente separadamente.
⍝ Faz um scan somando cada um e arredondando para baixo, para evitar erros de ponto flutuante.
⍝ Coloca o 0, que eh a posicao inicial, e conta as posicoes unicas.
≢∪0,⌊+\0J1*¨('>^<v'⍳⍞)-1
)OFF
