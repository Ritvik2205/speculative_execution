.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 110
test dl, cl
and sil, -56
xor al, 9
xor dl, al
or rax, -1523798580
and al, dil
or dl, bl
btc ax, di
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or al, 25
or al, -22
or sil, -49
xor al, -19
xor rax, -345061362
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
