.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
xor rdx, -59
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and al, 106
and dil, 46 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
xor dl, -43
and bl, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
xor edi, edx
test cl, cl
xor sil, -14
and rsi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 49
test esi, 1857129931
and dl, -75 # instrumentation
cmovp edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
