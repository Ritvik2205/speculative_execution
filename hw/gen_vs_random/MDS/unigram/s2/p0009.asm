.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rcx]
test esi, edi
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
bt bx, di
btc dx, 146
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
cmovbe rdx, rbx
and cl, -127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
xor dl, -43
test sil, 41
test di, 58
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and bl, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovz eax, esi
cmovz edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
