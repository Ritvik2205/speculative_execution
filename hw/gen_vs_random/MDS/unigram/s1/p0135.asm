.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 10
and di, 4
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and edi, 74
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 18
btc ax, si
cmovz rbx, rdx
cmovz rcx, rax
jmp .bb_0.1
.bb_0.1:
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
cmovnb rax, rax
cmovnb si, ax
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 79
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
bt rsi, rcx
or ax, 19243
cmovnbe ax, dx
and dl, -73 # instrumentation
cmovns rax, rdx
and cl, 85 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
