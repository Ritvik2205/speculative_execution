.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 24
cmovnp rdx, rsi
movzx eax, dl
add cl, -41 # instrumentation
adc bx, cx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 70
inc sil
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
cmp rsi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
imul rcx
and dl, 32
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
add dl, 64 # instrumentation
sbb dl, sil
add dl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
