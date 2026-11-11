.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
xor di, -83
cmovp bx, di
and bl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
not ecx
jmp .bb_0.1
.bb_0.1:
test edi, edx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
and dl, 1 # instrumentation
cmovl cx, dx
cmovns cx, di
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
btc dx, di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or dx, 125
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
