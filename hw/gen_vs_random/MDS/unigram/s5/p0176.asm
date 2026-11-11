.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
and dl, -19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and ax, 19224
and al, 2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
xor cl, al
and rdi, 80
xor esi, 38
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
or dil, cl
or dil, dil
or edx, eax
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and cx, -8
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
