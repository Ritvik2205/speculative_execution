.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea bx, qword ptr [rcx]
cmp eax, -240917296
and ax, 25351
and bl, 87
sbb al, sil
lea ax, qword ptr [rbx]
or edx, 39
lea rax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 96
lea dx, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
