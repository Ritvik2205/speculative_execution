.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
add bl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 36
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
xor dil, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
add al, sil
lea rdi, qword ptr [rax]
sub dil, sil
sbb al, al
sub dil, bl
test bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
