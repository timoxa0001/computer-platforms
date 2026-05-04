asect 0x00

MAIN:
ldi r3, 0xF2
ldi r0, 0x00
st r3, r0

ldi r0, 0x01
ldi r1, 0x01

CHECK_LOOP:
ldi r3, 0xF0
st r3, r0

ldi r3, 0xF1
ld r3, r2

cmp r2, r1
bne NOT_WIN

inc r0
inc r1

ldi r3, 0x10
cmp r1, r3
bne CHECK_LOOP

ldi r0, 0x00
ldi r3, 0xF0
st r3, r0

ldi r3, 0xF1
ld r3, r2

ldi r1, 0x00
cmp r2, r1
bne NOT_WIN

WIN:
ldi r0, 0x01
ldi r3, 0xF2
st r3, r0
br MAIN

NOT_WIN:
ldi r0, 0x00
ldi r3, 0xF2
st r3, r0
br MAIN

end  