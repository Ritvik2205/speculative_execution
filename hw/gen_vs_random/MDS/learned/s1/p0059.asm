.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
test dl, al
xor rsi, -117
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
xor dil, dl
or sil, dil
xor rdi, -9
test ebx, -2015966884
test edx, -1561252782
and rax, 452940266
jmp .bb_0.1
.bb_0.1:
test rcx, -613256812
or cl, 7
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
or rdi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
