.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb al, al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
xor al, cl
lea bx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
or cl, dl
jmp .bb_0.2
.bb_0.2:
imul dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
