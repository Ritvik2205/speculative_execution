.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -3 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl 
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi] 
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx 
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx] 
cmp rdx, rdx 
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi] 
add cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx] 
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111 
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl 
bswap rcx 
sbb eax, 544669545 
cmp ax, -79 
setnz dl 
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax] 
cmovnp rdi, rdi 
or edx, 1 # instrumentation
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
