.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rdi], dil 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns eax, dword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov edx, dword ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovns bx, word ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rdx], dl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc qword ptr [r14 + rbx], -106 
lfence
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
sub ebx, 82 
lfence
or edi, 0b1000 # instrumentation
lfence
and dil, 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv edi 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock add word ptr [r14 + rax], -6 
lfence
cmovl di, si 
lfence
cwde  
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
add rdx, qword ptr [r14 + rsi] 
lfence
adc bl, dl 
lfence
lea rbx, qword ptr [rcx + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
imul byte ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
