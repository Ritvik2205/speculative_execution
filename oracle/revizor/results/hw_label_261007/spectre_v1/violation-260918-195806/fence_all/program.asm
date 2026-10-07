.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -125 # instrumentation
lfence
cmovb edx, ecx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rsi], eax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovs dx, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb al, byte ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub dword ptr [r14 + rdi], 3 
lfence
lea esi, qword ptr [rdi + rax + 42536] 
lfence
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
lea rbx, qword ptr [rdx] 
lfence
btc rbx, 195 
lfence
add cl, -94 # instrumentation
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rcx], 106 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock adc qword ptr [r14 + rax], rbx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
setz byte ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov rax, qword ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rdi], 79 
lfence
or eax, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr edi, eax 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], 89 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
