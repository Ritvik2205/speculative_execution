.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sub cl, -21
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
sbb cl, 105
adc bl, -76
add cl, al
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or eax, -126
sbb eax, 99727957
lea ax, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
