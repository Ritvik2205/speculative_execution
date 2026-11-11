.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -16
cmp al, -106
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
sub al, 54
or rdi, -41
and al, sil
xchg sil, bl
test cl, dil
cmp al, cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 86
cmp al, cl
test dil, 64
sbb bl, dl
test dx, 28394
adc al, bl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
add al, -127
or al, 1
mov al, 7
sub cl, -127
xor ax, -29507
add bl, cl
xor si, -73
and al, -118
xor dil, cl
or al, dil
cmp rdx, -49
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
