.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and dil, bl
test dil, 46
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor cl, 24
xor dx, 68
and eax, -829294476
and rax, 1886208862
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
or al, -22
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
