.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
or sil, al
sbb al, 92
adc dil, 120
jmp .bb_0.1
.bb_0.1:
sub bl, cl
sub dl, al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
lea bx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
add dx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
