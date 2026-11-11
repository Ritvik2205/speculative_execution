.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -10
mov bl, cl
dec sil
sub al, bl
add al, 40
and al, 92
cmp al, -116
and al, al
sbb ecx, 98
sbb al, 66
add edx, 89
xor dl, -123
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and si, -74
sub cl, -94
cmp rax, 1097504565
mov cl, sil
cmp ecx, 62
sbb cx, 29
and cl, dl
sub cl, -119
xchg dx, si
or cl, dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
adc bl, al
or bx, -33
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
add al, 40
sbb al, 43
sbb bl, -75
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
