.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
lea ax, qword ptr [rax + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
test ecx, 729805876
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 48
setnle dil
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
cmovp ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 92
inc bx
bswap rcx
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
lea esi, qword ptr [rcx]
add sil, 20 # instrumentation
cmovnbe rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
