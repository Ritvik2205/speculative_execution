.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 48
or eax, -126
add sil, sil
sub edx, -63
dec bl
and dil, -93
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
