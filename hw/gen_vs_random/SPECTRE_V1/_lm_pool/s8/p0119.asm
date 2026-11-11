.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb eax, ecx
cmp rdi, 81
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
lea dx, qword ptr [rax]
add dil, 72
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rsi, 53
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and al, 33
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
sub dl, al
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
