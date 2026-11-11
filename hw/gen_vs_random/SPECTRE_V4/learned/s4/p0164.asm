.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 16
sub ax, si
cmp al, -53
add cl, al
or dl, sil
or dl, cl
and cx, -117
test al, 115
adc eax, -3570960
movzx bx, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
sub cl, bl
add al, -29
btc rdx, rcx
and al, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 79
test esi, -222751961
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 57
sub dil, -11
adc dl, 28
adc cl, -86
cmp cx, 0
adc bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and dl, 24
test al, 52
test dx, 28394
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
cmp al, -122
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
add ax, -18924
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
