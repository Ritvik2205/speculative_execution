.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
setp bl
test sil, 47
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
lea cx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
