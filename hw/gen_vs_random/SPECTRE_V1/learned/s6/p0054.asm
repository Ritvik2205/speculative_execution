.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 25351
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
bt ebx, 45
and dil, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, bl
cmp bl, -114
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
