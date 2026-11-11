.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 205
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or al, cl
xor cl, dil
and ax, 19224
and bx, 54
test dil, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and ax, 339
test bl, dil
or rsi, 1
or cl, sil
lea rdi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
