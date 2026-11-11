.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
inc dl
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rsi]
or rcx, 78
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
inc edx
lea di, qword ptr [rcx + rbx + 29]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
