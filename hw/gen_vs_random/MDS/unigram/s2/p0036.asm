.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
xor rcx, -2
and ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and dil, -116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
bts cx, di
not bl
or sil, al
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
jmp .bb_0.1
.bb_0.1:
btc ax, di
xor cl, 15
btc ax, 97
and al, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 50
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
