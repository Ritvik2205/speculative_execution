.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
and dl, bl
xor al, bl
cmp dl, dil
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
jl .bb_0.3
jmp .exit_0
.bb_0.3:
or ebx, -124
sub cx, 81
xchg edi, edx
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
lea rcx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
