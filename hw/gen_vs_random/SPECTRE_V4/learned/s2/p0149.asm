.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test sil, dl
and ax, 25163
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xor cx, -80
test dl, sil
sub dl, dil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
add cl, -62
cmovnz eax, esi
sub cl, 78
add dl, dl
and ax, 13045
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
