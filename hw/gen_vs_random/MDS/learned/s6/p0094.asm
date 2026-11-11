.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
bts rsi, rdi
test bl, 65
and al, -54
xor dil, 124
jmp .bb_0.1
.bb_0.1:
and dil, dil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
bt cx, dx
test dl, 9
or rsi, 98
and bl, 68
jmp .bb_0.2
.bb_0.2:
and rcx, 107
and sil, -56
test cx, 401
xor ax, -16696
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
