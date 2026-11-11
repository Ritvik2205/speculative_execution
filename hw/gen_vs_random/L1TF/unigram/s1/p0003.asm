.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 32
add dl, 64 # instrumentation
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 89
and dil, -22
btr bx, si
lea rcx, qword ptr [rdx + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and sil, 37
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
sets dl
test cl, 64
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
add bl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
