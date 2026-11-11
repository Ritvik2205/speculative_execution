.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
or sil, 122
and dil, bl
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
sbb al, cl
sub al, bl
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
test dl, 113
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
