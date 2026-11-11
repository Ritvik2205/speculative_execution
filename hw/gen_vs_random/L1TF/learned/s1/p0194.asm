.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
add al, 74
and al, -68
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and sil, dil
cmp bx, 90
adc dil, cl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sub dl, dil
test sil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
