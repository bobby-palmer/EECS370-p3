      lw  0 1 one
      lw  0 2 five
start beq 0 0 bch
      add 1 1 2
bch nor 1 2 3
  halt
one .fill 1
five .fill 5
