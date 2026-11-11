.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
or ecx, edi
cmp cl, 100
xor dil, -23
and dl, al
xchg rdx, rbx
adc al, -70
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
adc dl, 36
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
sub al, 29
cmp cl, bl
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 95
cmp dl, bl
test cl, sil
xor rsi, -3
test sil, bl
sub dl, -16
adc dil, -48
mov al, dl
dec bl
and dl, -104
or rdx, rsi
and bl, sil
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
dec dil
add bl, cl
sbb dl, dil
adc dil, al
test cl, 78
sub dl, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
