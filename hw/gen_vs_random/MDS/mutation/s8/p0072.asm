.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, ebx
xor si, 80
cmovo dx, di
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and cl, 49 # instrumentation
cmovp rax, rcx
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
xor rdi, rdx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
xor al, al
and sil, -69
and dl, al
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
xor dl, cl
test cl, 0
test ax, 18697
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
