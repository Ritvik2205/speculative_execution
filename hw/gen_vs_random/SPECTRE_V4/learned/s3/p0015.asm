.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
sub sil, dil
mov al, bl
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
or al, dl
mov dl, bl
cmp si, 109
cmp dx, -67
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
and cl, dl
and dl, 126
and dil, al
neg bl
and dl, -11
and cl, -118
xor dl, al
cmp rax, -47
sub al, 86
and dl, -53
adc sil, 111
cmp dl, al
sbb bl, al
cmp cl, dil
add al, bl
cmp al, 75
or eax, 185586366
cmp bx, 113
or bl, al
sbb al, 70
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and al, -1
sbb ecx, 32
not bx
cmp dil, dl
xor bl, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
