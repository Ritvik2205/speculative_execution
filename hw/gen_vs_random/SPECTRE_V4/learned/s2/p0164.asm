.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
sub dl, -16
btc rdi, rax
sbb dl, -62
sub dl, sil
cmp eax, -2073187604
or cl, 66
adc dl, dil
add bl, cl
add al, -29
test dl, -81
sub dl, dil
inc al
or eax, 143573881
bt esi, edi
adc al, 43
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
cmp cl, 59
sbb ax, 75
sub bx, 24
adc al, sil
test bl, al
xor ax, -17712
sub al, sil
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and cl, al
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
not dl
mov sil, dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub dil, 35
xor bx, -65
neg sil
cmp al, 75
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 64
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
