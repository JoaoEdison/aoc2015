input ← ⊑•FLines"input"

opening_mask ← '('=input
balance_matrix ← ¯1+2×opening_mask
# Part 1
•Show +´balance_matrix
# Part 2
•Show 1+⊑(+`balance_matrix)⊐¯1
