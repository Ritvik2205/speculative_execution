.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, al
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 63
or rdx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
