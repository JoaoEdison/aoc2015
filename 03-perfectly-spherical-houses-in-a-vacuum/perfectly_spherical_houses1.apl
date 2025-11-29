⍝ Transoform the directions in exponents and elevates i to each one.
⍝ Do a Scan with the sum of each rounded down, to avoid floating-point errors.
⍝ Inserts 0, that is the starting position, and counts the unique positions.
≢∪0,⌊+\0J1*¨('>^<v'⍳⍞)-1
)OFF
