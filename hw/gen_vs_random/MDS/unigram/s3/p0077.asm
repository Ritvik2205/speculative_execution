.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73 # instrumentation
cmovns rdx, rbx
and dil, dil
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and ax, dx
and ax, 28417
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 8
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovns ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 64
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 5
btc rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
