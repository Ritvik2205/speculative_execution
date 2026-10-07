.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi] 
adc ax, di 
setno dl 
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi] 
xchg edi, eax 
bt eax, 127 
lea rdx, qword ptr [rbx + rdi] 
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx] 
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi 
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi] 
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx 
jnbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
lfence
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax 
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi] 
sbb rax, -148104813 
bt si, bx 
cwde  
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
