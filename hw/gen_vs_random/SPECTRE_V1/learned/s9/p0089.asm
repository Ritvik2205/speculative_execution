.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
lea rbx, qword ptr [rdi + rsi + 80]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
xor al, -19
lea rbx, qword ptr [rdx + rdi + 50]
and bl, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -114
xor dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
