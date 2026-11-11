.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
add cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
cmp ax, 2764
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -93
cmovnp rdi, rdi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
setnz dl
cmp rdx, rdx
bswap rcx
add al, -3 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
sbb eax, 858696050
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
