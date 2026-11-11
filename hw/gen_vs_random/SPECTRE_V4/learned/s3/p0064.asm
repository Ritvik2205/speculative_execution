.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
cmp rax, -1547540200
and al, 75
sbb dil, 82
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
test sil, dil
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and bl, dil
adc dil, cl
sbb dl, 53
xor dil, 117
xor rax, -224991767
bt ax, cx
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
cmp al, 105
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and dil, -120
add al, -82
xor cl, 13
mov al, dl
or ax, 11396
test dl, 114
lea bx, qword ptr [rcx + rsi]
sbb dl, -106
adc al, 116
sbb al, 31
movsx cx, bl
lea bx, qword ptr [rdx]
adc al, sil
sub al, 55
adc dl, 91
add al, 19
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
