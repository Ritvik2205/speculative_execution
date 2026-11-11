.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
sbb dil, 22
add al, 117
lea rdi, qword ptr [rcx + rbx]
cmp rdi, 9
xor al, bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and dl, dl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
