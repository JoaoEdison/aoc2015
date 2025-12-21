# From doc.:

# https://mlochbaum.github.io/BQN/doc/control.html
If      ⇐ {𝕏⍟𝕎@}´
IfElse  ⇐ {c‿T‿F: c◶F‿T@}
While   ⇐ {𝕩{𝔽⍟𝔾∘𝔽_𝕣_𝔾∘𝔽⍟𝔾𝕩}𝕨@}´
DoWhile ⇐ {𝕏@ ⋄ While 𝕨‿𝕩}´

# https://mlochbaum.github.io/BQN/doc/group.html#partitioning
Partition ⇐ (⊢-˜¬×+`)∘=⊔⊢
# Dyadic form of ∩ in APL
Intersection ⇐ ∊/⊣
# Dyadic form of ∪ in APL
Union ⇐ ⊣∾∊˜¬⊸/⊢
# Dyadic form of ~ in APL
Without ⇐ ¬∘∊/⊣
# https://mlochbaum.github.io/BQN/doc/replicate.html#indices
IndicesRank2 ⇐ /○⥊⟜(↕≢)


# Written by João Manica:

# 𝕩 array
# Returns boolean
AllEqual ⇐ {∧´=⟜⊑𝕩}

# 𝕨-smallest value of 𝕩
GetSmallest ⇐ {⊏˜⟜(𝕨⊏⍋)𝕩}

# 𝕩 2d matrix as an array of arrays
# Returns 2d matrix
PadMatrix ⇐ {
  a ← 𝕩
  >(⋈(2+≢a)⥊0)∾({0∾𝕩∾0}¨a)∾⋈(2+≢a)⥊0
}


# Mathematical functions:

# 𝕩 integer >= 0
# Returns integer
NumDigits ⇐ {1+⌊0.000000001+10⋆⁼𝕩}

# 𝕩 integer >= 1
# Returns array
Dividers ⇐ {
  n ← 𝕩

  IfElse (n>1)‿{𝕤
    ran ← 1+↕⌊n÷2
    (/{0=𝕩|n}¨ran)⊏ran
  }‿{𝕤
    ⋈1
  }
}
