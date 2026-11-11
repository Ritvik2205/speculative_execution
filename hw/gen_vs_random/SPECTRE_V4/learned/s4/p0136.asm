.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
cmp dil, cl
add bl, dil
or rcx, 45
test cl, -31
cmp dl, 95
sbb al, 31
test dl, -102
sbb al, dil
not dl
sbb cx, 106
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
sub rbx, 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
