.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and bl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor dl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
lea ax, qword ptr [rbx + rdi + 14]
jmp .bb_0.1
.bb_0.1:
or dl, cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
or ax, -10161
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
