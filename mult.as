        lw      0       2     mcand
        lw      0       3     mplier
        lw      0       4     mask
        lw      0       5     neg
        lw      0       6     iter
        noop
loop    beq     0       6     end
        nor     3       4     7
        beq     0       7     adder   == add if zero    ==
resume  add     5       6     6       == decrement iter ==
        add     2       2     2       == mult by two    ==
        add     4       4     4
        lw      0       5     one
        add     4       5     4       == two steps to shift bitmask ==
        lw      0       5     neg
        beq     0       0     loop
end     halt
adder   add     1       2     1
        beq     0       0     resume
mcand   .fill   6203
mplier  .fill   1429
mask    .fill   -2
neg     .fill   -1
iter    .fill   15
one     .fill   1
