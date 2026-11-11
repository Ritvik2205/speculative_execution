.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
sub sil, bl
adc dl, sil
and sil, dil
add al, dil
or cx, 59
inc eax
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rax, 1072797615
mov al, -71
sbb al, 57
xor al, -60
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 67
xor ax, 30500
xor al, -113
add cl, dl
sub ax, 6579
cmp al, bl
btc rdi, rax
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
inc sil
mov bl, cl
adc bl, al
cmp bl, -16
adc sil, 88
cmp bl, sil
add sil, dil
sbb cx, 106
and al, 5
dec al
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
add edi, 41
xor ax, -17712
sbb sil, dl
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
