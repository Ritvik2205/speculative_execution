.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb dx, di
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
cmovnbe dx, cx
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and dil, 33
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 90
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
or bl, 84
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
xor ecx, 17
test cx, 34
and al, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
or al, -8
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
test bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
