.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
or bl, -5
and dl, -86
add dl, 22
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
