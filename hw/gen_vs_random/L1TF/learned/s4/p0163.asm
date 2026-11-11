.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdi]
xor al, 38
test bl, 45
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sbb al, -23
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
xor cl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
