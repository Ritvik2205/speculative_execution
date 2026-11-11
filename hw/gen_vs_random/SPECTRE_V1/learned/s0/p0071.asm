.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, cl
test al, 42
sub al, dl
sbb dl, sil
and cl, -57
lea bx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
