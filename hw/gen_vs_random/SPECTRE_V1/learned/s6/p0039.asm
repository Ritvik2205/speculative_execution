.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
mov bl, cl
add rdi, 36
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
sbb cl, bl
xchg al, dl
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
