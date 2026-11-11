.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 61
sub cl, bl
setb dl
cmp bl, al
lea rax, qword ptr [rcx]
lea si, qword ptr [rcx + rdi + 87]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 98
and al, -54
jmp .bb_0.2
.bb_0.2:
cmp ax, 7046
test cl, -120
cmovle rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
