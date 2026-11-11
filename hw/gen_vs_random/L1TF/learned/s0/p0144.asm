.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
bt ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 92
test rbx, 66
add al, -102
and ax, 26813
btc ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
