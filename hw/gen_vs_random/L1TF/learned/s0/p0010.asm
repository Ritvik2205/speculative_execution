.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
sub ax, bx
and al, -68
xor bl, dil
and al, bl
test cx, 84
or dil, al
jmp .bb_0.1
.bb_0.1:
test dl, -37
lea cx, qword ptr [rax]
sub eax, 81
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
