.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
sub cl, sil
cmp cx, 88
or dil, 98
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
