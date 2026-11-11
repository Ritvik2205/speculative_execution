.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
xor dl, 8
jmp .bb_0.1
.bb_0.1:
or bl, dil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
or dl, -8
btr eax, ebx
or rsi, 58
xor ax, -16696
test eax, 298249463
or al, cl
test al, cl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or rdx, -48
and cx, -2
or cl, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
