.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
dec rax
mov dl, dl
test dx, 37
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor rdi, 72
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
cmovl rcx, rcx
cmp al, dl
xor rax, -2035087432
dec dil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
