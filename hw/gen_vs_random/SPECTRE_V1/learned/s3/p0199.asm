.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 52
xor cl, al
and sil, 111
xor dl, al
lea ecx, qword ptr [rdx]
lea rdi, qword ptr [rsi + rbx + 70]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
