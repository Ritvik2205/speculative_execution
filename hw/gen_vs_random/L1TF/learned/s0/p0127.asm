.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb sil, sil
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
xor al, 38
or al, -48
test edx, 1891691791
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rbx]
lea ecx, qword ptr [rax]
add al, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
