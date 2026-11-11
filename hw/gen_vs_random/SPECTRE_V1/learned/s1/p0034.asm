.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
sbb bl, 79
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp al, bl
or dl, 41
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 98
jmp .bb_0.3
.bb_0.3:
test dl, -36
and cl, 86
test cl, al
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
