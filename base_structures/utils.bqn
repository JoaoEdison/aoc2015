# Utilitary functions

# Written by João Manica


# 𝕨 integer
# 𝕩 integer
# Returns array
RangeUntil ⇐ {𝕩+↕𝕨}

# 𝕩 array
# Returns boolean
AllEqual ⇐ {∧´=⟜⊑𝕩}

# 𝕨-smallest value of 𝕩
GetSmallest ⇐ {⊏˜⟜(𝕨⊏⍋)𝕩}
