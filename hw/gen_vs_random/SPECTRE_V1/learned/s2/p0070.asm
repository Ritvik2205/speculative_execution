.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
sbb al, 104
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
bts bx, 74
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
sbb cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
