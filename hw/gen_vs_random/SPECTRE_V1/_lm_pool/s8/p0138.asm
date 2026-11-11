.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
sub cl, al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
xor cl, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, 46
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
test dil, -116
sbb al, 49
lea cx, qword ptr [rsi + rbx]
js .bb_0.3
jmp .exit_0
.bb_0.3:
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
