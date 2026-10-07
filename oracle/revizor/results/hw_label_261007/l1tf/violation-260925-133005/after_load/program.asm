.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -128 
lfence
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx] 
lfence
mov al, cl 
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016 
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx] 
lfence
sbb rdi, 110 
jmp .bb_0.1 
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx] 
lfence
cmovz esi, eax 
sub al, dl 
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax] 
lfence
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
