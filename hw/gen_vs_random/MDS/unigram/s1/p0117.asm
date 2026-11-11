.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rdi, 23
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 8
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and cl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
or sil, -78
and dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
test dl, -119
btr si, 208
and rax, -636362975
and bl, 26 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and cl, 112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and cl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and dl, 47 # instrumentation
cmovnp edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
