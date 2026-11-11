.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 1
test dil, -116
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
not di
sbb ecx, 44
sbb edx, 105
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
