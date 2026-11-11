.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mov bl, dl
lea cx, qword ptr [rdi + rbx + 48694]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
test dx, 95
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
cmp rdx, -19
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
