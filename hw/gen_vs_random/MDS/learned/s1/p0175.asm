.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
xor bl, sil
not cl
xor bl, dil
test al, 91
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
test dl, -85
or edx, -78
or al, -22
or dl, -8
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and di, 91
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
