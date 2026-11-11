.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -6897
and sil, -84
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test cl, sil
adc ecx, 55
test al, 72
sub dl, sil
mov sil, sil
sub dl, -16
cmp al, bl
xor di, 71
sub eax, 490935921
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
add dl, cl
cmp cl, 59
and dil, -23
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
cmp cl, sil
btc rdx, rcx
add dil, cl
xchg sil, dl
sub cl, dl
test dl, -102
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
or al, cl
or rdx, 1
cmp al, -53
test edx, 1479885278
and al, -87
test rcx, 74
or ax, -26182
add cl, sil
cmp al, -1
add dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
