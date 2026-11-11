.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, dx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
not edx
add dil, 16 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 71
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
cmp dl, sil
sub dil, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
lea ebx, qword ptr [rbx + rcx + 100]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
lea rax, qword ptr [rbx + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
setnl bl
test cx, -17886
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
