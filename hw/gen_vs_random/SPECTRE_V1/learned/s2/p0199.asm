.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, dl
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 94
add dl, cl
adc al, cl
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
