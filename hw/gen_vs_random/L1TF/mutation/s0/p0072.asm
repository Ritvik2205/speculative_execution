.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
mov bl, cl
adc al, -6
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
or rdx, 11
cmovns esi, edx
jmp .bb_0.1
.bb_0.1:
test al, bl
add dl, 127 # instrumentation
setnbe sil
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 3
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
xor si, dx
test al, -70
bswap esi
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
