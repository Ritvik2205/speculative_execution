.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sbb sil, bl
cmp ebx, -33
cmp cl, 44
setp bl
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
lea edx, qword ptr [rbx]
sbb rax, 1161375577
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub cl, bl
test sil, 97
sub sil, -18
test ax, -32457
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
