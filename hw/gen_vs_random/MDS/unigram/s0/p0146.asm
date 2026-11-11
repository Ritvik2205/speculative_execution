.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
btc ebx, 44
btr ax, 51
or di, -18
and dil, 98
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and bx, si
or di, ax
cmovle dx, dx
and al, 33 # instrumentation
cmovnle ebx, ecx
btc bx, dx
or sil, -8
and dil, 45
or bx, 48
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 58
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 17
and cl, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
