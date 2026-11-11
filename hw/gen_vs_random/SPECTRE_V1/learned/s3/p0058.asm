.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 94
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, -23
add cl, bl
and rbx, 59
test dil, -116
js .bb_0.2
jmp .exit_0
.bb_0.2:
add al, -13
inc ebx
lea rsi, qword ptr [rcx + rax + 65]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
