.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 27
and ax, -4410
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
or dx, 125
xor dil, bl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
test al, 22
or al, 37
and rsi, 51
xor di, -83
test bl, al
and rax, -2039117613
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
btr si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
