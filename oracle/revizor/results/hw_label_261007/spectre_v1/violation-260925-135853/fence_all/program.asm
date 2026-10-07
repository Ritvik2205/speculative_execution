.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lfence
lock neg word ptr [r14 + rsi] 
lfence
adc ax, di 
lfence
setno dl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
add rdi, qword ptr [r14 + rsi] 
lfence
xchg edi, eax 
lfence
bt eax, 127 
lfence
lea rdx, qword ptr [rbx + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov rax, qword ptr [r14 + rdx] 
lfence
or edi, 1 # instrumentation
lfence
and edx, edi # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div edi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or dx, word ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb dword ptr [r14 + rdx], ebx 
lfence
jnbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
add dl, -66 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rcx], ax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
dec dword ptr [r14 + rsi] 
lfence
sbb rax, -148104813 
lfence
bt si, bx 
lfence
cwde  
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
