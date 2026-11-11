.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 91
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
cmovo dx, di
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
and cl, 49 # instrumentation
cmovp rax, rcx
btr eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
xor rdi, rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and dl, al
test cl, -18
test ax, -31596
test esi, 425331143
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and sil, -9
xor al, al
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
