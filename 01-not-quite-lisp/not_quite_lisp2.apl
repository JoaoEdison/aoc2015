#!/usr/local/bin/apl -s

⍝ Create a boolean mask from ')', multiplies by -2 and sums 1;
⍝ Do Scan by summation;
⍝ Find the index of the first value equal to 1.


(+\¯1+2×')'=⍞)⍳1

)OFF
