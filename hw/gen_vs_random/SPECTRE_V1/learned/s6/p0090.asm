.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea rdx, qword ptr [rcx + rbx + 80]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
add sil, 2
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
