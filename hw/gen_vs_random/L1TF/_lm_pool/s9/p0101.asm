.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 98
sub cl, al
and cl, al
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 68
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc bl, dil
jmp .bb_0.2
.bb_0.2:
test rax, rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test bl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
