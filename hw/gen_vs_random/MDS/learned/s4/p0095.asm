.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
not bl
xor sil, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 5
and bl, cl
or bl, cl
jmp .bb_0.2
.bb_0.2:
test al, dl
and ax, -12519
xor di, -83
test dil, bl
bt ax, bx
bt ax, dx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
