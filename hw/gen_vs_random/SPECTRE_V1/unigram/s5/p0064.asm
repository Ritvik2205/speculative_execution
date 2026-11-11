.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
cmovnl rcx, rax
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
xor bl, -38
bt rcx, 95
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
mov bl, cl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
movzx ecx, si
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
