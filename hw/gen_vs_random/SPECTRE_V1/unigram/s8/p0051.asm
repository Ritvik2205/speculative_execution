.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
imul eax
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
bt rdx, 28
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
lea rdx, qword ptr [rcx + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 70
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
lea dx, qword ptr [rsi + rdi + 90]
lea edx, qword ptr [rdx + rdx + 65]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
xor ebx, 1
cmp rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
