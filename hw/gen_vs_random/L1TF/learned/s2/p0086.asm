.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and al, cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
xor al, dl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
add cl, dl
jmp .bb_0.1
.bb_0.1:
test cl, 14
add al, bl
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
movzx ecx, si
jmp .bb_0.2
.bb_0.2:
sub dl, al
sbb al, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
