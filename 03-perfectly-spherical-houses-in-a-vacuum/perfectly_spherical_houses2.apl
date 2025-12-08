#!/usr/local/bin/apl -s

input ← ⍞

Delivers ← {⌊+\0J1*¨('>^<v'⍳⍵)-1}
Part2 ← {≢∪0,(Delivers∊(2|⍳≢⍵)⊂⍵)∪(Delivers∊(~2|⍳≢⍵)⊂⍵)}

Part2 input

)OFF
