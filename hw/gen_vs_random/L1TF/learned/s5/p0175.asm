.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
xor al, 45
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
jmp .bb_0.1
.bb_0.1:
or dl, sil
lea ecx, qword ptr [rdi]
sbb sil, dil
jmp .bb_0.2
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
or al, sil
test al, -84
and rax, 1163013815
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
