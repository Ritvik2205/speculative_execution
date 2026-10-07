.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
lfence
inc dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rax], -128 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rbx] 
lfence
mov al, cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
inc qword ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov qword ptr [r14 + rdx], 1908434016 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
setz byte ptr [r14 + rbx] 
lfence
sbb rdi, 110 
lfence
jmp .bb_0.1 
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
lfence
xor dx, word ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc di, word ptr [r14 + rdx] 
lfence
cmovz esi, eax 
lfence
sub al, dl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov bl, byte ptr [r14 + rax] 
lfence
or dl, 1 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
inc byte ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock or word ptr [r14 + rcx], -38 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
