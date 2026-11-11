.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
or dil, -71
btr rcx, 23
test dl, -119
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
xor al, sil
or rax, 1461812833
and rcx, 107
or dl, dil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
