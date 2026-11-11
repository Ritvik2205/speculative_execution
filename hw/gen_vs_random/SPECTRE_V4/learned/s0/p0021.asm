.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 27
cmp al, -116
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
or cl, 83
and al, 5
or al, -83
sbb sil, -124
or bl, 61
xor rdi, -72
or dil, al
test sil, 1
adc sil, dil
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
xor dil, cl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmp cl, 49
sbb dl, 75
cmp al, -44
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
sub dl, al
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor cl, sil
and sil, -84
sub cl, -127
or al, 27
adc dil, cl
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
adc al, cl
and dl, -11
adc dl, cl
xor ax, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
