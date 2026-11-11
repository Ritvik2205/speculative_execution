.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, ax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 44
or cl, bl
and cx, -2
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
bt bx, dx
or al, -22
xor al, -4
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
