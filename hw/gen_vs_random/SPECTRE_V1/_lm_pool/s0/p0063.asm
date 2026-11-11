.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
sbb al, -14
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, 86
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea cx, qword ptr [rsi + rbx]
add cl, -127
and bl, dl
xor rsi, rbx
test cl, -62
sub dl, 71
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
