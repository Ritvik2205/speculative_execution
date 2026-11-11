.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
or rax, 699028911
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
bt edx, ebx
cmp dil, 12
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
adc bl, dil
jmp .bb_0.1
.bb_0.1:
setle al
lea rax, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
