.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22368 
lfence
cmovnp bx, cx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovs eax, dword ptr [r14 + rcx] 
lfence
not di 
lfence
and cl, 127 
lfence
and cl, -63 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovno dx, word ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rcx], ax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rax], esi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnbe rax, qword ptr [r14 + rdx] 
lfence
xor bx, ax 
lfence
jmp .bb_0.1 
.bb_0.1:
and dl, -107 # instrumentation
lfence
cmovz rax, rbx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovno ax, word ptr [r14 + rdx] 
lfence
cmovnle ecx, ebx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rax], -84 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
btr dword ptr [r14 + rsi], 5 
lfence
and al, -37 
lfence
test dil, -67 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
lock btr qword ptr [r14 + rax], rdx 
lfence
and ax, 28417 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
