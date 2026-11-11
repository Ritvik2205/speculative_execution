.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
jmp .bb_0.1
.bb_0.1:
or al, bl
test dil, al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and bl, 68
and rax, -1931765367
xor bl, cl
xor dil, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
