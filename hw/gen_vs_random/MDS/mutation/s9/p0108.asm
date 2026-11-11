.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
btr rax, 209
or bl, 43
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
cmovz si, di
or al, al
btr ebx, 0
and cl, 114 # instrumentation
cmovz dx, si
cmovo dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
cmovnle cx, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
