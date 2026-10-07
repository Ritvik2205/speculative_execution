.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -121 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp ecx, dword ptr [r14 + rdx] 
lfence
bts esi, edx 
lfence
adc bl, 70 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rax], bl 
lfence
or cl, dl 
lfence
jle .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rcx], 1 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub rsi, qword ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
seto byte ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
bt dword ptr [r14 + rdx], 1 
lfence
dec rdx 
lfence
cbw  
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovo di, word ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov eax, dword ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
setnle byte ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub edi, dword ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sbb byte ptr [r14 + rcx], cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
