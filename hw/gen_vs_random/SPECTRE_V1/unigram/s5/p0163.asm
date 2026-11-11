.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 37
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
sbb dil, -93
lea si, qword ptr [rax]
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
add al, -76 # instrumentation
adc sil, 64
bts bx, ax
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
lea rdx, qword ptr [rax + rcx + 48576]
cmp rcx, rax
add al, -61 # instrumentation
seto al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
