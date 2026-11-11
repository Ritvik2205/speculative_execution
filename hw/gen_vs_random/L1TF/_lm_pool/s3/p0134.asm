.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
xor bl, -5
or al, -57
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
test bl, al
xor al, 16
btc dx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
