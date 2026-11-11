.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
xor si, 91
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
cmovo dx, di
btr eax, ebx
and cl, 49 # instrumentation
cmovp rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
xor rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test cl, -18
test esi, 1857129931
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and dl, al
xor al, al
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and sil, -69
test ax, 6779
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
cmovl edi, edx
or dl, bl
cmovz ecx, edx
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and bl, 45 # instrumentation
cmovnb dx, di
cmovno bx, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
test rax, -359674714
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and dl, 16 # instrumentation
cmovle ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
or ax, -11837
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
