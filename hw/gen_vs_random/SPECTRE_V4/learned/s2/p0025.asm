.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 67
mov ax, 31802
or ax, 27604
adc dil, dl
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
cmp rdi, 28
or eax, 143573881
cmp al, cl
add al, -55
and dl, al
and cl, -101
mov al, dl
or al, -90
sub rbx, 101
add dil, sil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 57
and al, 82
and ax, -6897
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
test cl, -119
adc cl, dl
sbb di, -105
mov dil, 24
xchg bl, al
sbb al, 54
sub dl, -16
adc al, 116
add dl, -82
mov dl, al
mov bl, 106
and dl, -11
xor rax, 1049851782
or bl, -80
and dil, -61
adc cl, -66
or ecx, 17
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
