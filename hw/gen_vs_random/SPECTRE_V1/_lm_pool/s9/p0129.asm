.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and cx, 84
test al, 84
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rax, rbx
cmp dil, cl
lea dx, qword ptr [rcx + rax]
and dl, -92
sbb al, -114
lea bx, qword ptr [rsi]
cmp al, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
