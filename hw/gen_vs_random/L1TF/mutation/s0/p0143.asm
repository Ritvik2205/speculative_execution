.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns esi, edx
mov bl, cl
imul rcx
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
or rdx, 11
adc al, 80
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
add dl, 127 # instrumentation
setnbe sil
test al, bl
bswap esi
xor si, dx
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
test al, -56
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
