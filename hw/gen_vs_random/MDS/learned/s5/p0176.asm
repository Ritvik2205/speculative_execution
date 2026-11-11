.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -8
and cl, al
btr di, cx
xor rdx, -59
xor si, 91
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test al, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
or rax, -1561934807
and al, 87
xor rsi, -117
bt ax, cx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
