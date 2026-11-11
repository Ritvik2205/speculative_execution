.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
or cl, 105
cwde
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
