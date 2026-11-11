.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
sub rax, -679751639
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
add cl, 105 # instrumentation
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 10
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 51
movzx bx, dil
dec bl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 10
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, edi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
not al
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
lea rsi, qword ptr [rdx]
dec rdx
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
