.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
movsx cx, bl
lea rdi, qword ptr [rdi + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
imul ebx, edx, 79
lea bx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, 1938514106
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
add al, -27 # instrumentation
sets al
sbb ax, -17107
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
sub cx, 23
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
