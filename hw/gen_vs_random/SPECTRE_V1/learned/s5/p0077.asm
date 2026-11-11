.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
test sil, 97
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
