.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cbw
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
test bl, 12
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
jmp .bb_0.5
.bb_0.5:
lea cx, qword ptr [rdx]
or al, -5
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
