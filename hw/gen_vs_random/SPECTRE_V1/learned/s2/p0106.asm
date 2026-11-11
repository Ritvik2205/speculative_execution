.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
lea ax, qword ptr [rbx]
and al, sil
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add cl, sil
sub dl, -48
sub dil, -32
sbb cl, al
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rbx]
and bl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
