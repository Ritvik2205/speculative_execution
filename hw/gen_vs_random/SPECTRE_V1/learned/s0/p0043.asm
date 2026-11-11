.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 100
test bl, -8
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, sil
add al, 10
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
