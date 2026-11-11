.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, bl
adc ebx, 27
add dil, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
add al, 64 # instrumentation
cmovnz ax, bx
bts dx, dx
lea rsi, qword ptr [rcx + rbx]
and rsi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rax]
dec rax
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
lea ax, qword ptr [rsi + rcx + 58]
add esi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
