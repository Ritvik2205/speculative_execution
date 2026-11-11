.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and al, 59
adc dl, dil
cmp ebx, -19
movsx edi, al
sub dl, -16
or al, -47
xor bx, ax
adc dil, bl
and al, -12
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
add dl, dl
sbb al, 102
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 59
and dl, 126
add dil, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
sbb sil, 24
sub cl, dl
sub dil, cl
sub sil, 71
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 11
test cl, dl
xchg cl, cl
xor sil, 20
cmp dil, sil
adc dl, al
sub bl, dl
mov al, bl
xor sil, 84
xor ax, -6064
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 71
sbb bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
