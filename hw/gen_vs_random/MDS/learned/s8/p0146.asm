.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 20
xor si, 80
and cx, -8
or sil, dl
xor bl, 67
jmp .bb_0.1
.bb_0.1:
test al, bl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor rax, -404206377
or dil, dl
jmp .bb_0.2
.bb_0.2:
xor rdx, -59
and cl, -71
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
