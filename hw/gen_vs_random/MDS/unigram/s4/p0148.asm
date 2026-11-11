.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, cl
and bl, -87 # instrumentation
cmovo bx, si
and al, -10 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
and dx, di
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
and cl, 112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
jmp .bb_0.1
.bb_0.1:
not al
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
and dl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
or rsi, rdi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
