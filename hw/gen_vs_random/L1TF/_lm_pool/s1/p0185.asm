.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor cl, 89
sub al, -75
test eax, 899472326
xor bl, sil
or rax, 1362710293
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dil, -126
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
