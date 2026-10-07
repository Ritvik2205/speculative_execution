.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -6 
and rax, 0b1111111111111 # instrumentation
lfence
xor sil, byte ptr [r14 + rax] 
and rdi, 0b1111111111000 # instrumentation
lfence
lock dec qword ptr [r14 + rdi] 
mov al, 79 
cmovp rcx, rbx 
lea ebx, qword ptr [rdx + rbx] 
and rdi, -60 
bt edi, 191 
add cl, -103 # instrumentation
cmovnl rdx, rax 
xor bx, ax 
add edi, esi 
and rsi, 0b1111111111111 # instrumentation
lfence
dec word ptr [r14 + rsi] 
add ecx, edx 
and rsi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rsi], di 
imul ax, di, 114 
and rdi, 0b1111111111000 # instrumentation
lfence
lock sub word ptr [r14 + rdi], cx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
