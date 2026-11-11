.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 61
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and bl, 65 # instrumentation
cmovnbe cx, di
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
cmovz rsi, rcx
and dl, 120 # instrumentation
cmovnz eax, edx
test dl, 27
and cl, 18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
cmovnz si, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
test sil, 41
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and al, -26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
test sil, 41
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
