.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor bl, 67
xor rcx, 71
xor dx, 19
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and al, cl
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
