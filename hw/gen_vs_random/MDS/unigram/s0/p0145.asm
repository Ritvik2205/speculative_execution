.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
bts bx, 3
test rax, 1949278494
xor dil, -124
cmovnp dx, cx
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and esi, edx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and bl, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and dl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
not sil
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
btc cx, 115
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
