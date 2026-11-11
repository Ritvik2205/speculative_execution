.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and al, 122 # instrumentation
cmovnbe eax, edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 84
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
cmovz ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
and dl, -73 # instrumentation
cmovns rcx, rax
and al, -56 # instrumentation
cmovl rsi, rax
or ax, -17790
or dx, 79
cmovo di, cx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 68
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 29
xor cl, 122
and al, 126
and dl, 110 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
btc ecx, 21
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
