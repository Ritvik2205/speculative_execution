.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx 
lfence
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax] 
lfence
xor al, al 
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl 
lfence
and cl, 40 
jmp .bb_0.1 
.bb_0.1:
bt ax, dx 
and dl, -73 # instrumentation
cmovns rbx, rcx 
or ecx, esi 
or ax, 19243 
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax] 
lfence
or dil, -52 
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil 
lfence
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax] 
lfence
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119 
lfence
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx] 
lfence
cmovno dx, ax 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
