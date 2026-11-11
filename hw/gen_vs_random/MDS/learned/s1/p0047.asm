.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
or dl, sil
and sil, bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or dl, -89
and rbx, 65
and rax, 498847670
or sil, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
bt si, cx
or bl, -52
test bl, sil
xor cl, bl
and cl, al
or cl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
