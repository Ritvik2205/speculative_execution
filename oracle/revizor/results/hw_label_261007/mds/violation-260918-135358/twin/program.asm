.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905 
and rax, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rax], -26 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovbe edx, dword ptr [r14 + rdi] 
bt ebx, esi 
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rcx], rdx 
and di, si 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovle bx, word ptr [r14 + rdi] 
bt eax, eax 
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
lfence
bt dword ptr [r14 + rdx], eax 
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
lfence
cmovno cx, word ptr [r14 + rcx] 
and rsi, 0b1111111111000 # instrumentation
lfence
lock not byte ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovle rax, qword ptr [r14 + rbx] 
and ax, -30938 
jmp .bb_0.1 
.bb_0.1:
or al, -8 
or ax, -4635 
cmovp ax, di 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns bx, word ptr [r14 + rcx] 
cmovz rax, rcx 
and al, -56 
and rbx, 0b1111111111000 # instrumentation
lfence
lock not word ptr [r14 + rbx] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
