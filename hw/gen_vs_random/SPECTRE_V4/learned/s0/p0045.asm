.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
mov dil, dil
sub cl, -119
inc al
sub dl, sil
sub bl, dil
and edx, 3
cmp cl, dl
mov bl, sil
or bl, sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test dl, -125
xor sil, bl
xor cl, 13
xor dil, cl
cmp al, 75
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
add al, -3
or bl, 80
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
test eax, -651442446
btc rcx, rsi
test al, 72
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
adc al, -59
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
cmp dl, dil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
adc dl, 48
test al, 114
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
