.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, cx
btc dx, 67
xor al, 9
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
btc dx, di
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
cmovnbe ax, di
btc bx, 104
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
or dil, -41
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and bl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
cmovnbe edi, esi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
not rax
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
