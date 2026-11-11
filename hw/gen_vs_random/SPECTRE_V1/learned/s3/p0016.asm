.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, al
test bl, -8
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
sbb al, -112
sbb dil, sil
movzx ebx, ax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rax + rbx + 39]
cmovno di, cx
mov cl, bl
sbb dil, sil
xor rdi, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
