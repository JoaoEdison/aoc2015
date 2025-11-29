input ← ⍞

Delivers ← {⌊+\0J1*¨('>^<v'⍳⍵)-1}
Part2 ← {≢∪0,(Delivers∊(2|⍳≢⍵)⊂⍵)∪(Delivers∊(~2|⍳≢⍵)⊂⍵)}

Part2 '^v'
Part2 '^>v<'
Part2 '^v^v^v^v^v'
Part2 input
)OFF
