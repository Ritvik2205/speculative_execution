.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -3 # instrumentation
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rdi], dl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovle rcx, qword ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rax], edx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movzx ebx, byte ptr [r14 + rdx] 
lfence
cmp rdx, rdx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], 1 # instrumentation
lfence
and rdx, qword ptr [r14 + rsi] # instrumentation
lfence
shr rdx, 1 # instrumentation
lfence
div qword ptr [r14 + rsi] 
lfence
add cl, 113 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovl rsi, qword ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rcx], -111 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rbx], bl 
lfence
bswap rcx 
lfence
sbb eax, 544669545 
lfence
cmp ax, -79 
lfence
setnz dl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov ecx, dword ptr [r14 + rax] 
lfence
cmovnp rdi, rdi 
lfence
or edx, 1 # instrumentation
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
