.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
or dl, -115
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
cmovl edi, edi
cmovns edx, edi
or rax, -2043376621
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
bts rdi, 27
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and al, -64 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and al, 33 # instrumentation
cmovnle eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or cl, 10
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
