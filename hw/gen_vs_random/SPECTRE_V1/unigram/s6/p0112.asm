.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
test ebx, -1465665890
cmovbe si, ax
add cl, -123 # instrumentation
cmovnp rdx, rax
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 55
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
imul rax, rdi, 109
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
or ecx, 49
sub rax, -1628299544
add cl, 46 # instrumentation
sbb rax, -91
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
inc esi
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
cmovp si, dx
lea bx, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
