.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
xchg edi, ebx
xor dil, cl
or rax, -443578116
jmp .bb_0.1
.bb_0.1:
xor ax, -16232
lea bx, qword ptr [rdi + rbx + 60]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
