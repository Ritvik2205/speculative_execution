.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -6 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor sil, byte ptr [r14 + rax] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock dec qword ptr [r14 + rdi] 
lfence
mov al, 79 
lfence
cmovp rcx, rbx 
lfence
lea ebx, qword ptr [rdx + rbx] 
lfence
and rdi, -60 
lfence
bt edi, 191 
lfence
add cl, -103 # instrumentation
lfence
cmovnl rdx, rax 
lfence
xor bx, ax 
lfence
add edi, esi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
dec word ptr [r14 + rsi] 
lfence
add ecx, edx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rsi], di 
lfence
imul ax, di, 114 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sub word ptr [r14 + rdi], cx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
