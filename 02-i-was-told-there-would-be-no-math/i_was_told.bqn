input ← •FLines"input"

# From doc.:
Partition ← ((⊢-˜¬×+`)∘=⊔⊢)

GetSmallest ← {⊏˜⟜(𝕨⊏⍋)𝕩}

GetNums ← {•ParseFloat¨'x' Partition 𝕩}

SqrFeetWrappingPaper ← {
  nums ← GetNums 𝕩
  fir ← 0 ⊑ nums
  sec ← 1 ⊑ nums
  thi ← 2 ⊑ nums
  areas ← (fir×sec)‿(sec×thi)‿(thi×fir)
  min ← 0 GetSmallest areas
  ⊑min+2×+´areas
}

FeetRibbon ← {
  nums ← GetNums 𝕩
  ⊑+´(×´nums)‿(2× 0 GetSmallest nums)‿(2× 1 GetSmallest nums)
}

# Part 1
•Show +´SqrFeetWrappingPaper¨input
# Part 2
•Show +´FeetRibbon¨input
