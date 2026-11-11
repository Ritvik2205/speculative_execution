.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
setz al
add rbx, 85
add al, 18
lea dx, qword ptr [rcx + rbx + 54281]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
test dil, -116
sbb sil, dl
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
