.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
xchg rcx, rsi
sbb cl, 105
sub al, dil
not edi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
or edi, 92
sbb cl, al
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
