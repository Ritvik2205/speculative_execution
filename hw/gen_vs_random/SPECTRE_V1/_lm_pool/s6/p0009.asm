.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sub sil, -18
or eax, 1276549484
sbb al, -107
and dl, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dl
or bl, 2
add bl, -95
sub dil, -111
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
