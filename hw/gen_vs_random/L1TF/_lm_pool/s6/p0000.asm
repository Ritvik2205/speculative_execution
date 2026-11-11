.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
sbb dil, cl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
sbb eax, -1165635662
test dil, -126
add si, -5
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
test dl, -37
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
xor cl, dl
cmp al, -119
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
