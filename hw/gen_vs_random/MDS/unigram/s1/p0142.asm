.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 16
bts bx, 3
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
and bl, 45 # instrumentation
cmovnb si, di
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and dil, -62
and cl, -111
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor al, 34
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
cmovo rsi, rax
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and bl, -123 # instrumentation
cmovnp bx, dx
or rbx, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
