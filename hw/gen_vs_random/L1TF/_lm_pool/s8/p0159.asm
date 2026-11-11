.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
test al, -56
or sil, cl
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 87
cmp bl, dl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
