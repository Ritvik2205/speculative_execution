.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb eax, esi
lea ax, qword ptr [rbx]
test bl, -8
test cl, -33
adc sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and al, dil
cmp cx, 19
cmovs cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
