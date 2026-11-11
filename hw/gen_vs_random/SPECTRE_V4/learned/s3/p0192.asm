.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and cl, -118
add rdx, 41
or dl, 71
add al, -1
mov ax, 31802
adc dil, bl
test bl, -16
sbb dl, 53
dec bl
xor al, -6
or al, 1
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or bl, 111
test dl, bl
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
add cl, al
xor al, cl
cmp bl, dil
sub dl, sil
add al, dl
mov al, 125
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
adc dl, cl
sbb dl, 53
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
adc bl, -58
cmp al, 115
cmp cl, sil
test al, 115
add dl, bl
sub dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
