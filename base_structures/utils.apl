#!/usr/bin/env apl --script

⍝ Utilitary functions

⍝ Written by João Manica


⍝ ⍺ separator element
⍝ ⍵ array
⍝ Returns array
Split ← {(∊(⍺≠⍵))⊂⍵}

⍝ ⍺ integer < ⍵
⍝ ⍵ integer
⍝ Returns array
Range ← {(⍺-1)+⍳⍵-⍺-1}

⍝ ⍺ integer
⍝ ⍵ integer
⍝ Returns array
RangeUntil ← {¯1+⍵+⍳⍺}

⍝ ⍵ array
⍝ Returns boolean
AllEqual ← {∧/⍵=↑⍵}
