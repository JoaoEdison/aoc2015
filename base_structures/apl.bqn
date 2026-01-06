# APL-like operators

# From documentation


# https://mlochbaum.github.io/BQN/doc/group.html#partitioning
Partition ⇐ (⊢-˜¬×+`)∘=⊔⊢
# Dyadic form of ⊂ in APL
PartitionEnclose ⇐ (¬-˜⊢×·+`»⊸>)⊸⊔
# Dyadic form of ∩ in APL
Intersection ⇐ ∊/⊣
# Dyadic form of ∪ in APL
Union ⇐ ⊣∾∊˜¬⊸/⊢
# Dyadic form of ~ in APL
Without ⇐ ¬∘∊/⊣
