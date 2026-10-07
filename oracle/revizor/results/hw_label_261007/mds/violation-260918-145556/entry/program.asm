.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi 
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax] 
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109 
bt edi, 254 
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx 
xor edi, 74 
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx] 
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi] 
cmovle ebx, edi 
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26 
and eax, -872608366 
jmp .bb_0.1 
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20 
cmovno eax, esi 
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx] 
bt edx, 75 
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0 
not eax 
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx 
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi] 
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
