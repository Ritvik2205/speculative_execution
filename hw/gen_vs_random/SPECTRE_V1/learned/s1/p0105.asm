.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edi
and sil, -55
add ax, 6656
add cl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 84
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
sub sil, -18
test cl, cl
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
