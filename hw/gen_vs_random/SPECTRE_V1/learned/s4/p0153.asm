.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
adc cl, -81
cmp cl, al
cmp rbx, 63
xor rax, -1905683998
and al, -54
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
