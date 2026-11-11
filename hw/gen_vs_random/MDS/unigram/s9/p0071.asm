.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 41
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsf si, si
test cl, 54
bts ax, 22
or dil, dil
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
or bl, 43
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
xor edi, 19
btc rdx, 44
xor cl, 98
xor di, -83
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
and cl, -111
test rdx, 99
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
bt esi, ebx
and dl, 48 # instrumentation
cmovz rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
