.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
cmp ecx, 43
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, dil
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
xchg dl, cl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add dl, 47
and dl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
