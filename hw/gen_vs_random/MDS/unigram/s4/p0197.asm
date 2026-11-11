.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rdi, rdx
or sil, -49
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
or cl, 39
and al, 47 # instrumentation
cmovnp eax, esi
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
test dl, al
and esi, 48
and ax, -122
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
btc si, 43
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
and bl, -56 # instrumentation
cmovnle ecx, ebx
cmovbe rsi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and ax, 29207
cmovnle bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
