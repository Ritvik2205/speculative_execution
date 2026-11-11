.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
sub cl, -21
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
btc edx, 169
mov dil, cl
or rdi, 68
and bl, 87
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
