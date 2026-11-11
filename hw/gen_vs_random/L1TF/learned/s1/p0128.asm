.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and sil, -90
xor cl, 89
test cl, 17
and dl, bl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
and cl, cl
or eax, 1495028166
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
