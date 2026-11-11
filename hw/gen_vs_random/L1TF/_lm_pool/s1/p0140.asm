.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdx]
test dil, -126
xor dl, dl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 1
sbb al, -4
and al, -68
add ax, 23614
xor bx, 37
sbb dil, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
