.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, cx
and rax, 4
or cl, cl
xor dl, 34
btr rax, 29
jmp .bb_0.1
.bb_0.1:
xor dl, dil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
btr bx, di
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
test al, sil
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
xor si, 91
test dil, -80
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
