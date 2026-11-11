.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 93
cmp di, 45
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and cl, 64
sub rdi, 17
xchg al, dl
xor sil, 64
jmp .bb_0.1
.bb_0.1:
or bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
