.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
sub dil, sil
sbb dil, 91
mov dl, cl
or al, sil
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
sub cl, bl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
sbb bl, -98
cmp edx, -95
cmp al, -78
xor bl, 27
sbb cl, -69
or rax, -943474997
test eax, -251558852
and dil, cl
xor bl, dl
sub al, dil
dec al
sbb dl, -71
test dl, -125
cmp sil, -100
imul cx, ax
xor dl, cl
mov al, dil
adc cl, bl
and dil, -120
mov dil, cl
test cl, 78
add dl, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
