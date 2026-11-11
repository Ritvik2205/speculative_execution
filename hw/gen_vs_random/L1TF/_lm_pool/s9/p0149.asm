.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor di, 36
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
sub cl, 86
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
