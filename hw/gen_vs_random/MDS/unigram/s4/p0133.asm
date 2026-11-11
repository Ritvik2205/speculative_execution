.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, di
xor rdx, rax
bts rcx, rdx
xor cx, di
or rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
test sil, 98
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and sil, -94
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 78
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
cmovnb di, ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
bts esi, eax
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dl, -115 # instrumentation
cmovl cx, dx
and cl, -109 # instrumentation
not rax
and dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
