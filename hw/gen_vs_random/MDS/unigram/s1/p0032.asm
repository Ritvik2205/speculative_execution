.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and dl, -107 # instrumentation
cmovz rax, rcx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
cmovnle eax, ecx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
cmovo rax, rsi
and cl, 8
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
cmovz eax, esi
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
not ebx
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and dl, -38 # instrumentation
cmovp rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
