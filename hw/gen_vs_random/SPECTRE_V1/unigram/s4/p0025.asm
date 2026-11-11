.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
or bx, bx
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
sbb bl, dl
add bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], bl
btr ecx, esi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and ax, 25351
lea bx, qword ptr [rbx + rdx + 12]
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 57
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rbx, 20
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 11
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
