.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 96 
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
lfence
btr dword ptr [r14 + rcx], esi 
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
lfence
cmovp ecx, dword ptr [r14 + rdx] 
and cl, -101 
and al, 73 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnle si, word ptr [r14 + rdi] 
cmovb ax, ax 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns ecx, dword ptr [r14 + rcx] 
bt rax, rcx 
jmp .bb_0.1 
.bb_0.1:
and bl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
lfence
cmovb rsi, qword ptr [r14 + rax] 
xor cl, -79 
and rsi, 0b1111111111111 # instrumentation
lfence
or edx, dword ptr [r14 + rsi] 
cmovle si, si 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovo rax, qword ptr [r14 + rdi] 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovl edi, dword ptr [r14 + rbx] 
cmovz ecx, eax 
and rax, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rax], -116 
and rcx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ecx, dword ptr [r14 + rcx] 
and al, -56 # instrumentation
cmovl rdx, rcx 
cmovno ebx, ecx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
