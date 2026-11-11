.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 0
mov dl, cl
or bl, dil
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
test dil, cl
mov al, cl
xor al, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
sub cl, bl
or al, al
test al, sil
adc dil, 124
or cl, 12
test al, 114
add al, -6
adc dl, 5
add dl, al
jmp .bb_0.2
.bb_0.2:
mov cl, dil
or rax, -823069511
sbb cl, 45
sub cl, -94
test dl, -81
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
add dl, bl
sub dl, -16
adc al, sil
and bl, -60
adc bl, dil
sbb bl, -98
jmp .bb_0.3
.bb_0.3:
sub sil, al
test bl, sil
neg bl
cmovnb esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
