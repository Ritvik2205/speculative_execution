.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 73
bt rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and cl, -101
btr rbx, 96
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
cmovb ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and al, -56 # instrumentation
cmovl rdx, rcx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
cmovno ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and bl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
cmovz ecx, eax
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
xor cl, -79
cmovle si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
