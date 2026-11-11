.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea cx, qword ptr [rsi + rax + 44]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and al, -54
test sil, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
