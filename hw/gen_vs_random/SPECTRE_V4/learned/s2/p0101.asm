.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 1
test dil, -26
or bl, -99
add eax, 544045319
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
add sil, 3
sub bl, 66
adc dil, cl
or dx, 57
or al, al
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and ax, -16777
adc al, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
