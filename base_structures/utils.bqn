# From doc.:

# https://mlochbaum.github.io/BQN/doc/group.html#partitioning
Partition ⇐ (⊢-˜¬×+`)∘=⊔⊢
# Dyadic form of ∪ in APL
Intersection ⇐ ⊣∾∊˜¬⊸/⊢

# Written by João Manica:

# 𝕨-smallest value of 𝕩
GetSmallest ⇐ {⊏˜⟜(𝕨⊏⍋)𝕩}
