.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 92
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
cmovz si, bx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
btr rdi, 20
and ax, 30884
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
cmovnb rdx, rdx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 70
cmovb rbx, rsi
cmovnz eax, ecx
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and sil, al
xor al, 77
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 92
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
