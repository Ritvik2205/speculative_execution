.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, ax
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test al, dl
and ax, 339
and dl, -73
and cl, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and ax, 29207
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
test al, 22
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
