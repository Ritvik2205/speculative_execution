.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rdx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and bl, dil
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 9
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
lea edx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
lea rax, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 65
add dl, 53
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
