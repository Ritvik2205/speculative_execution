.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
adc al, -6
cmovns esi, edx
mov bl, cl
or rdx, -22
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 3
test al, -32
test al, bl
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
add dl, 127 # instrumentation
setnbe sil
xor si, dx
bswap esi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
