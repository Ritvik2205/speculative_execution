.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
add al, 74
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 105
jmp .bb_0.1
.bb_0.1:
cmovnbe esi, ebx
xor dl, 64
bswap rdi
cmp bx, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
