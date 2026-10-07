.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx] 
xor rdi, rdi 
cmovp edx, ebx 
lea bx, qword ptr [rax + rdi] 
xchg eax, edi 
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax] 
neg sil 
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi] 
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdx 
lea rax, qword ptr [rbx] 
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx] 
lea rdx, qword ptr [rdi + rsi] 
mov rdi, -5671708760962025403 
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx 
sub rax, 788906357 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
