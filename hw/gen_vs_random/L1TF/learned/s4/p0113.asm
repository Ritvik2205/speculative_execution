.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
test al, -104
jmp .bb_0.1
.bb_0.1:
test al, -104
dec ecx
lea ecx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
test dil, -126
lea rsi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 100
or rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
