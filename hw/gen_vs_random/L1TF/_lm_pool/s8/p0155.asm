.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, di
or cl, dil
and cx, -79
xor al, 45
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
js .bb_0.2
jmp .exit_0
.bb_0.2:
xor di, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
