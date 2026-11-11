.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 90
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 57
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
or bl, 13
and rsi, 64
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and ax, 19224
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
and al, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and al, cl
and rbx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 97
xor esi, edi
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
