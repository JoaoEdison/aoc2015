#!/usr/bin/env bqn
⟨Union⟩ ← •Import "../base_structures/apl.bqn"


input ← ⊑•FLines"input"

GetCoordinate ← {
  0‿('>'=𝕩) + ('^'=𝕩)‿0 + 0‿(-'<'=𝕩) + (-'v'=𝕩)‿0
}

Delivers ← {+`GetCoordinate¨𝕩}

Part2 ← {
  robo ← (2|↕≠𝕩)/𝕩
  santa ← (¬2|↕≠𝕩)/𝕩
  ≠⍷ ⟨0‿0⟩ ∾ (Delivers robo) Union (Delivers santa)
}

# Part 1
•Show ≠⍷ ⟨0‿0⟩ ∾ Delivers input
# Part 2
•Show Part2 input
