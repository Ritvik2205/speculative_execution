.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or cl, dil
xor bl, 67
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
xor dl, cl
and sil, -56
or cl, al
or al, -78
or rax, -1523798580
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
