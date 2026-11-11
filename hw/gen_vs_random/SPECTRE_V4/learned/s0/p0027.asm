.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1213318393
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
add dil, 75
cmp dl, al
movsx ax, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
sub ax, cx
test sil, dl
sub dl, dil
and dl, -104
adc dl, al
and al, 92
sbb cl, -69
and dil, dl
or al, bl
adc al, bl
cmp al, -106
and cl, -128
sub cl, -127
and bl, cl
adc al, -59
cmp al, -53
add bl, al
cmp al, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
