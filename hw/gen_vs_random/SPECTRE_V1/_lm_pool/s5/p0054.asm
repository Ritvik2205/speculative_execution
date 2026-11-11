.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
test al, -99
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
test al, 84
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, sil
test dil, -116
lea dx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
cmp dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
