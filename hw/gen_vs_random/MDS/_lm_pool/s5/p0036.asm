.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, ax
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
btc bx, dx
xor al, 8
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or dl, -89
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test dil, -80
bt si, ax
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
