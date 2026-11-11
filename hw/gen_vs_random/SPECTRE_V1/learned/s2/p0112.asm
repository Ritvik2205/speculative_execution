.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 97
add bl, -95
or al, dl
sbb al, -107
lea rsi, qword ptr [rax]
sub al, -66
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
add cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
