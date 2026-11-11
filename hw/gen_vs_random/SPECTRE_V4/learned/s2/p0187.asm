.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, ax
and sil, -84
and dl, sil
adc cl, dil
mov sil, dl
add sil, -18
dec bl
sub cl, -127
mov dl, dil
add cl, dl
xor dl, al
xor al, -31
sub rbx, 101
sbb ax, 7207
btc rbx, rdx
adc sil, dl
and al, 41
mov dil, cl
sub bl, -98
adc dl, sil
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
imul di, ax
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
