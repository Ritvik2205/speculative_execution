.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
or al, bl
and al, 87
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test rdx, 87
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
or rax, 1461812833
xor dil, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and bl, dil
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
