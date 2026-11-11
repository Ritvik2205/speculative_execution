.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
lea di, qword ptr [rax]
add bl, -95
mov dl, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 80
add dl, 47
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 111
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
