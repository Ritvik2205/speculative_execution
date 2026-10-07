.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22368 
cmovnp bx, cx 
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx] 
lfence
not di 
and cl, 127 
and cl, -63 
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax 
lfence
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi 
lfence
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx] 
lfence
xor bx, ax 
jmp .bb_0.1 
.bb_0.1:
and dl, -107 # instrumentation
cmovz rax, rbx 
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx] 
lfence
cmovnle ecx, ebx 
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84 
lfence
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5 
lfence
and al, -37 
test dil, -67 
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx 
lfence
and ax, 28417 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
