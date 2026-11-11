.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 65
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
cmovbe eax, eax
or dl, -21
and bl, -123 # instrumentation
cmovnp bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
not esi
and al, 54 # instrumentation
cmovnp di, di
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
btc bx, 58
cmovno bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
xor ecx, edx
and bl, 68
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
test dl, -95
cmovnb rsi, rsi
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
