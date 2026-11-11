.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 75
or dil, 80
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, cl
sbb sil, cl
bt cx, dx
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
sbb bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
