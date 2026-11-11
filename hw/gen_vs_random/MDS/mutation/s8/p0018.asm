.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, ebx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
xor si, 80
cmovo dx, di
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and cl, 49 # instrumentation
cmovp rax, rcx
xor rdi, rdx
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and dl, al
and sil, 74
xor al, al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
xor dl, cl
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
test cl, 73
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
test esi, 1857129931
test ax, -31596
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
