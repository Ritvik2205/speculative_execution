.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 62
xor sil, 110
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and cl, dil
test al, 91
and rcx, -63
or al, -24
btc rsi, 80
xor rcx, 71
test al, -81
test eax, 1287331633
and ax, 339
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
bt bx, dx
xor al, -26
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
