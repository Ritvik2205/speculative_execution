.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and dl, -115 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
and bl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
or cl, al
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
and al, -38 # instrumentation
cmovp rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
jmp .bb_0.1
.bb_0.1:
cmovle si, si
cmovno ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
and dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
or sil, -8
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
and dl, 110 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
or rcx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
