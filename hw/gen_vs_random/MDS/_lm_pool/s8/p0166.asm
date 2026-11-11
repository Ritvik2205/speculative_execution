.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
or sil, -49
and sil, -9
or al, dil
or cl, 30
and eax, 461212071
test al, dil
or al, 16
test edx, -1561252782
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
