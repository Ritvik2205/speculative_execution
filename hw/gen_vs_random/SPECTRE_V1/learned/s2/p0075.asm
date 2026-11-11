.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, sil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
setnb bl
cmovnb ecx, edx
add di, 44
sbb sil, al
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
sbb bl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
