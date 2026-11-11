.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
adc ebx, -5
mov al, dl
and al, -118
cmp eax, 89
and sil, -84
jmp .bb_0.1
.bb_0.1:
cmp al, 116
test bl, -116
adc bl, dl
xor al, 106
test eax, -251558852
and si, -70
and ax, -14374
sub bl, dil
adc dil, 109
sbb al, 95
sbb al, -3
sbb al, 70
and dl, sil
add al, -3
add cl, bl
cmp edi, 3
cmp dl, dil
test al, -85
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
dec al
test eax, 1600638830
cmp dil, 101
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
