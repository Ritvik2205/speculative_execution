.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
add bl, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 64
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
cmp rcx, rax
sub dx, -23
bts cx, 63
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdi + rax + 100]
xor cl, al
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sub cl, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
xor rcx, 74
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
