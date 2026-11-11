.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -109
test edi, 59
and al, 33
not bl
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
sbb dl, cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
or al, 19
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
