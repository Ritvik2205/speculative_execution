.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
lfence
setz cl 
lfence
and eax, -1143711697 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovbe ecx, dword ptr [r14 + rdx] 
lfence
cmp al, bl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov ax, word ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov bl, byte ptr [r14 + rbx] 
lfence
lea ebx, qword ptr [rbx + rdx + 53812] 
lfence
jmp .bb_0.1 
.bb_0.1:
lea rbx, qword ptr [rsi + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rax], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rax], 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv word ptr [r14 + rax] 
lfence
and rdi, rbx 
lfence
sbb dl, cl 
lfence
xor dl, bl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovb eax, dword ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rcx], 114 
lfence
lea rsi, qword ptr [rsi] 
lfence
or di, 0b1000000000000000 # instrumentation
lfence
bsf cx, di 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
