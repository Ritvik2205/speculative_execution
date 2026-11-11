.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rbx, rbx
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and dl, 119 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
or bx, 0b1000000000000000 # instrumentation
bsr si, bx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rbx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and sil, 8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
and cl, 49 # instrumentation
cmovp rdi, rcx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
or ax, cx
xor bx, 68
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
bts dx, 50
and rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
