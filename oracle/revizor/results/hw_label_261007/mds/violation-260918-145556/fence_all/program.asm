.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rax], esi 
lfence
and cl, 113 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovns rdi, qword ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rcx], -109 
lfence
bt edi, 254 
lfence
or bx, 0b1000000000000000 # instrumentation
lfence
bsf bx, bx 
lfence
xor edi, 74 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovp dx, word ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or cx, word ptr [r14 + rdi] 
lfence
cmovle ebx, edi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rdi], 26 
lfence
and eax, -872608366 
lfence
jmp .bb_0.1 
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rcx], -20 
lfence
cmovno eax, esi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rsi, qword ptr [r14 + rdx] 
lfence
bt edx, 75 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
btc word ptr [r14 + rax], 0 
lfence
not eax 
lfence
or ecx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf edx, ecx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovz cx, word ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
and eax, 0b111 # instrumentation
lfence
lock btr dword ptr [r14 + rbx], eax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
