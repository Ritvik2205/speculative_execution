.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
or eax, -1641258390
add al, -72
add al, -47
xor al, -119
jmp .bb_0.1
.bb_0.1:
bt eax, ebx
and cl, cl
lea cx, qword ptr [rax + rsi]
and sil, -55
cmovle ax, dx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
