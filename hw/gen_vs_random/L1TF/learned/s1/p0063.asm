.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea dx, qword ptr [rax + rcx]
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
and dl, dil
add bl, cl
add dil, dl
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rsi]
or rbx, 18
btr edx, 7
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
sbb si, 18
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
