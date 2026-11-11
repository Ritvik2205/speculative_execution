.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
add rbx, 75
test dl, 24
add bl, -49
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
sbb al, -43
dec sil
and cl, dl
bts eax, 29
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or dl, dl
add dl, dil
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
