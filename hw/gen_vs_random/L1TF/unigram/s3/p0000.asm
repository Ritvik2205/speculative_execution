.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 54 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and cl, dil
btr edx, 7
sbb rbx, rsi
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
movzx rcx, cx
sub ax, -3178
cmovo rax, rcx
or rsi, rbx
sub dil, -39
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 98
or bl, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
