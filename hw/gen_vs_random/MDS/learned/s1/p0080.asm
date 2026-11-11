.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
or sil, -78
or dil, -41
xor bx, 11
test rbx, 50
bts rbx, rcx
or cl, 6
test al, dil
jmp .bb_0.1
.bb_0.1:
xor dil, -124
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test eax, 343548072
xor dl, sil
and ax, 19740
or rsi, 51
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
