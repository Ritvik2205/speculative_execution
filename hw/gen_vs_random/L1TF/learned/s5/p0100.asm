.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
jmp .bb_0.1
.bb_0.1:
or al, -5
lea ax, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
test bl, 84
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
test sil, 29
jmp .bb_0.2
.bb_0.2:
and sil, 37
not bl
add bl, 68
and dil, -22
xor dl, cl
lea ecx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
