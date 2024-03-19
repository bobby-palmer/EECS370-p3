  lw 0  1 five
  lw 0  2 neg
start beq 0 1 end
  add 1 2 1
  sw 0 1 five
  beq 0 0 start
end halt 
neg .fill -1
five .fill 5
