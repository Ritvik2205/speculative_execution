.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
sbb bl, dil
or al, dil
cmovno si, di
mov bl, cl
cmovb bx, si
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
cmp si, -11
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
