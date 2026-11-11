.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
or rdx, 30
and dil, al
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsf bx, di
cmovo dx, dx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
cmovnb si, si
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
bt eax, 76
or bl, -98
and edx, 42
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
xor bl, 2
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
