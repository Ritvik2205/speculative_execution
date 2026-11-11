.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
btc ebx, 149
xor al, -19
bt dx, ax
bt dx, si
or cl, 39
or dil, 12
xor ax, -5889
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
or cl, 30
and bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 93
not cl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
