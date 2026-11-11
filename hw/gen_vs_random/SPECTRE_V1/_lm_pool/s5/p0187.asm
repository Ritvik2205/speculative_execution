.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
cmp rax, -1365488374
or al, dil
lea rcx, qword ptr [rbx]
cmp dl, 119
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb ebx, 75
test bl, -8
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
cmovle bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
