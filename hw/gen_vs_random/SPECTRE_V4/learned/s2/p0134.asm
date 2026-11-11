.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
cmp rcx, -121
and ax, -23308
test cl, bl
sbb dil, al
and cl, -128
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
or bl, -80
and dil, sil
sub bl, dl
dec dl
adc esi, 55
bt si, cx
adc edx, -86
and bl, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
cmp al, dil
and dl, bl
or bl, 80
adc cl, sil
mov dl, al
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
test edx, -38580719
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
