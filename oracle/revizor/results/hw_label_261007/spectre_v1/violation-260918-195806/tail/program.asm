.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -125 # instrumentation
cmovb edx, ecx 
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax 
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax] 
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3 
lea esi, qword ptr [rdi + rax + 42536] 
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
lea rbx, qword ptr [rdx] 
btc rbx, 195 
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 106 
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx 
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx] 
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx] 
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79 
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax 
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 89 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
