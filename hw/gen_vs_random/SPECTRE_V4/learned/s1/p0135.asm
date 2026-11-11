.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 106
sub al, 86
cmp rax, 1682181214
bt rdi, 6
xor ax, 45
add dl, 109
adc cl, 31
add al, -4
cmovno ebx, edi
cmp ax, -18179
adc al, bl
sbb al, -4
adc dil, al
or bl, al
cmovbe edx, eax
and di, -65
and cl, -101
dec al
and al, 100
adc bl, dl
or al, al
cmp al, cl
xor al, al
and dil, sil
xor bl, dl
jmp .bb_0.1
.bb_0.1:
adc dl, bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
xor dl, dil
not al
sbb dl, 53
or cl, dil
bt edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
