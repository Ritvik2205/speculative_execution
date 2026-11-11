.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp bx, dx
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], cx
bswap rdi
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdx]
adc al, -92
and bx, -118
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
add rbx, 75
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
cmovnbe rdi, rsi
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
sbb cl, dil
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
