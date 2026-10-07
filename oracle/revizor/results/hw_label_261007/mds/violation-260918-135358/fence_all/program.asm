.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rax], -26 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovbe edx, dword ptr [r14 + rdi] 
lfence
bt ebx, esi 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rcx], rdx 
lfence
and di, si 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovle bx, word ptr [r14 + rdi] 
lfence
bt eax, eax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and eax, 0b111 # instrumentation
lfence
bt dword ptr [r14 + rdx], eax 
lfence
and al, -61 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovno cx, word ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock not byte ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovle rax, qword ptr [r14 + rbx] 
lfence
and ax, -30938 
lfence
jmp .bb_0.1 
.bb_0.1:
or al, -8 
lfence
or ax, -4635 
lfence
cmovp ax, di 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns bx, word ptr [r14 + rcx] 
lfence
cmovz rax, rcx 
lfence
and al, -56 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock not word ptr [r14 + rbx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
