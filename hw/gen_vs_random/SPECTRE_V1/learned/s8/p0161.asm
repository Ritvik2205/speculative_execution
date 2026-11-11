.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and al, 33
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
test cl, -120
add al, -109
and bl, bl
adc bl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
