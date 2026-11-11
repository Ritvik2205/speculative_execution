.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, 65
cmp rdx, -49
test al, -24
mov sil, dil
test dil, 64
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
inc edx
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 16
test dl, 24
xor bl, dil
adc al, 43
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
sbb al, bl
xor ax, 13332
test dl, 114
cmp al, sil
and al, sil
or rdx, rcx
cmp al, -53
sub al, 11
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
not cl
sbb al, 57
and cl, 32
cmp dil, -29
cmp dl, sil
and al, 41
xor bl, -126
cmp sil, cl
sbb cx, -114
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
