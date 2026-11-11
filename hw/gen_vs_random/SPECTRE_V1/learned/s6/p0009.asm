.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -48
sbb bl, -41
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 67
and dil, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and al, -23
or cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
