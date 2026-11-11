.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add rax, 913062684
and al, 33
sub dl, dil
or ebx, -124
sub sil, bl
adc al, -92
adc al, dl
cmp eax, -240917296
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
sbb bl, al
cmp dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
