.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 19
dec cl
add rax, 6
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
test rdx, rdi
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
dec cl
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
