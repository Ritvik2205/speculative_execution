.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb edi, ebx
test dil, -116
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
sub dl, sil
inc cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 3
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 85
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -37
add rax, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
