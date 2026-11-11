.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
sub bl, al
mov edx, ecx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add al, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
lea ecx, qword ptr [rbx + rbx + 44]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, dl
add sil, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
sub rcx, 13
imul ax, bx, 69
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
cmovz rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
