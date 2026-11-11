.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -111
mov cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add dil, dil
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
