.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
add bl, 68
or cl, 105
xchg edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
test sil, 29
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
and rcx, rsi
and edi, 90
lea ebx, qword ptr [rsi]
or ax, -10161
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
