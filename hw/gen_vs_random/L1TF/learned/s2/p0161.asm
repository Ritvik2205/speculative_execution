.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
sbb al, -4
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
jmp .bb_0.2
.bb_0.2:
xor al, bl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
jp .bb_0.6
jmp .exit_0
.bb_0.6:
lea rbx, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
