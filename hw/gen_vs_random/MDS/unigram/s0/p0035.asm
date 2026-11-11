.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, ax
and sil, 65
or cl, 10
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and dl, 107 # instrumentation
cmovs edx, esi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 67
bt rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 20
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 38
test dl, 25
and ax, si
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
