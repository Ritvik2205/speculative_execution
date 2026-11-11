.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
test ebx, 64
or al, dil
sub al, 0
cmp al, -53
or dl, sil
sub dil, -40
or cx, 59
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
dec dl
cmp al, -122
cmp al, -116
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
cmp al, 114
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
add al, al
sub al, dl
sbb bl, -98
and di, cx
sub cl, dil
xchg bl, al
xor dl, -66
adc dil, sil
sub sil, dl
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
mov cl, dil
xor ax, -6064
cmp sil, -100
add bl, 54
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
adc al, sil
and cl, -118
xchg edi, ecx
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
