.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
btr ax, di
jmp .bb_0.1
.bb_0.1:
test dl, 48
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
xor cl, 98
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor dx, 94
test eax, -1634766116
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or dl, dil
xor dx, 30
xor dil, cl
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
