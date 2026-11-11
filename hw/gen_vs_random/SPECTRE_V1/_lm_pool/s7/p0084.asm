.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
sbb dx, 97
adc si, 6
dec ax
cmp ax, 7452
sub al, cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovs dx, cx
jmp .bb_0.2
.bb_0.2:
cmp sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
