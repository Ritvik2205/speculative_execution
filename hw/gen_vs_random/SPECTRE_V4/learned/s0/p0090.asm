.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and dl, bl
adc dl, bl
movsx cx, al
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
add dl, al
mov cl, sil
cmp sil, 127
test dl, 114
and dl, 124
adc dil, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
