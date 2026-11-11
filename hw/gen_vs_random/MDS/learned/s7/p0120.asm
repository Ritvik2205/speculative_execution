.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, di
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
test ebx, -2015966884
xor al, -4
btc bx, 58
test dl, cl
or dil, dl
jmp .bb_0.1
.bb_0.1:
test al, -7
and al, -103
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
test al, 91
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
or dl, dil
and di, 99
test dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
