.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
sub rcx, -121
and bx, 19
or al, -48
lea di, qword ptr [rdx]
cmovbe ebx, edx
add bl, 68
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
