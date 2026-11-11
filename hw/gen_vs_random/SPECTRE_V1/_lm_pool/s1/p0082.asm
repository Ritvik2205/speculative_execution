.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 39
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
add cl, al
add cl, -127
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
sbb rdi, 79
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 74
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
