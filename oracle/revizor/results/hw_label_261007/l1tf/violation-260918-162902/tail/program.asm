.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx] 
cmovb ax, di 
mul dx 
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax 
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843 
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di 
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi] 
add bl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx] 
jmp .bb_0.1 
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi] 
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax] 
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax] 
cmovnle rsi, rsi 
xor al, 14 
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi] 
mov si, di 
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
