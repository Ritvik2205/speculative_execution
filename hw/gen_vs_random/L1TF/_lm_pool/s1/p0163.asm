.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
dec bx
test sil, 29
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
btc eax, 220
sub dil, -39
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 67
test rbx, 23
xor cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
