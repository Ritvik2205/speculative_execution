.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
lfence
add di, word ptr [r14 + rbx] 
lfence
xor rdi, rdi 
lfence
cmovp edx, ebx 
lfence
lea bx, qword ptr [rax + rdi] 
lfence
xchg eax, edi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
add rdi, qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnz rax, qword ptr [r14 + rax] 
lfence
neg sil 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rdi], rdx 
lfence
lea rax, qword ptr [rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
not dword ptr [r14 + rdx] 
lfence
lea rdx, qword ptr [rdi + rsi] 
lfence
mov rdi, -5671708760962025403 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rsi], ebx 
lfence
sub rax, 788906357 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
