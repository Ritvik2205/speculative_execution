.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 96 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
btr dword ptr [r14 + rcx], esi 
lfence
and bl, -66 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovp ecx, dword ptr [r14 + rdx] 
lfence
and cl, -101 
lfence
and al, 73 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnle si, word ptr [r14 + rdi] 
lfence
cmovb ax, ax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns ecx, dword ptr [r14 + rcx] 
lfence
bt rax, rcx 
lfence
jmp .bb_0.1 
.bb_0.1:
and bl, -34 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovb rsi, qword ptr [r14 + rax] 
lfence
xor cl, -79 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or edx, dword ptr [r14 + rsi] 
lfence
cmovle si, si 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovo rax, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovl edi, dword ptr [r14 + rbx] 
lfence
cmovz ecx, eax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rax], -116 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ecx, dword ptr [r14 + rcx] 
lfence
and al, -56 # instrumentation
lfence
cmovl rdx, rcx 
lfence
cmovno ebx, ecx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
