.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
btr eax, ebx
xor rdi, rdx
and cl, 49 # instrumentation
cmovp rax, rcx
xor si, 80
cmovo dx, di
jmp .bb_0.1
.bb_0.1:
and sil, -56
test esi, 425331143
test cl, 62
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and dl, al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
xor dl, cl
xor al, al
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
test ax, 6113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
