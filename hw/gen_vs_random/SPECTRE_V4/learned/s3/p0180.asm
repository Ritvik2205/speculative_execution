.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 114
add bl, al
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
imul eax, ecx, -17
jmp .bb_0.1
.bb_0.1:
xor al, 55
sbb al, 70
test dl, 24
and al, -12
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
