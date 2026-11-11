.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, cl
sbb al, 66
inc al
xor dil, dil
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sub dil, al
and dl, dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
lea rcx, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
