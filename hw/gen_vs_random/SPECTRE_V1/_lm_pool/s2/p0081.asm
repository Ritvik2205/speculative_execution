.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
sub sil, dl
sbb cl, 105
sub bl, -19
lea cx, qword ptr [rbx + rsi + 18]
btr bx, si
lea rax, qword ptr [rcx]
sbb bl, dil
and dil, 98
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
