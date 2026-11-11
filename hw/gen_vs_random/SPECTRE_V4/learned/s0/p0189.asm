.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor ax, -29507
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor dil, sil
cmp dl, al
test cl, -52
sbb al, -3
add al, bl
sub cl, 18
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
add al, -6
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov bl, 29
or bl, dil
xor bl, -126
adc sil, cl
sub al, 86
sbb sil, cl
sub al, 127
sub al, dl
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
mov sil, al
sub al, cl
add dil, -61
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
