.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
jmp .bb_0.1
.bb_0.1:
xchg rdi, rdx
test bl, 84
lea si, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 70
sbb al, dl
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
