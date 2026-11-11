.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
or al, -17
bt bx, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and al, -114
test al, 22
xor cl, 55
and sil, -56
or sil, -49
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and ax, -4410
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor ax, 23633
test dil, -51
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
