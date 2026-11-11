.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
add dl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
mul al
cmovnb si, ax
lea si, qword ptr [rax + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 48
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
cmovnbe rdx, rax
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
cbw
add dl, 75
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
lea rcx, qword ptr [rax + rdi]
cmovnp rax, rcx
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
