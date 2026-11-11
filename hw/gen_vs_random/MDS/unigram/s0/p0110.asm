.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
cmovnl bx, ax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
cmovle bx, bx
test dil, -67
xor rdi, -50
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and cl, -115 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 13
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
bt rdi, rcx
cmovp rsi, rax
cmovb rcx, rsi
xor eax, eax
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
