# Commands in ordinal order

## Contents

- [Basic Latin](#basic-latin)

## Basic Latin

- 0x24 (`$`): pop a: push a twice (DUP)
- 0x25 (`%`): pop a, b: push a, b (SWAP)
- 0x2b (`+`): pop a, b: push b + a
- 0x2d (`-`): pop a, b: push b - a
- 0x30 (`0`): push 0
- 0x31 (`1`): push 1
- 0x40 (`@`): rotate stack upwards by 1 (ROLL)
- 0x44 (`D`): pop a: push a &times; 2
- 0x48 (`H`): pop a: push a &divide; 2, floored
- 0x50 (`P`): pop a: push a **XOR** 1 (switch parity)
- 0x53 (`S`): pop a: push a<sup>2</sup>
- 0x5e (`^`): pop a, b: push b, a, b (PICK)
- 0x5f (`_`): pop a: discard (DROP)
- 0x64 (`d`): pop a: push a - 1
- 0x69 (`i`): read integer from STDIN and push
- 0x6f (`o`): pop a: write a to STDOUT
- 0x75 (`u`): pop a: push a + 1
