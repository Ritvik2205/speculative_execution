.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 13
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
add dl, 88
add al, -106
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 7 # instrumentation
cmovnl eax, ebx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
btc cx, 61
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and dl, 52
cmovnp rdx, rsi
bt esi, ecx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
