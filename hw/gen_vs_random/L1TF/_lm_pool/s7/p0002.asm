.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, dx
test cl, 35
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 61
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
adc cl, -34
jmp .bb_0.4
.bb_0.4:
test dl, 84
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
