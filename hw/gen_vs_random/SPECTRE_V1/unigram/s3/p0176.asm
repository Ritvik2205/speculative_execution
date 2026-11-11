.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets bl
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
cmovnbe di, ax
add bl, -107 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
sub cl, 58
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 57
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rcx + rsi + 9]
xchg dx, di
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 63
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
lea rax, qword ptr [rax + rbx + 28]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
