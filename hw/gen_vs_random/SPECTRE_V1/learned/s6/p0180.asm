.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 87
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
lea rdx, qword ptr [rdi]
or rax, -3
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub al, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, al
sbb bl, al
or dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
