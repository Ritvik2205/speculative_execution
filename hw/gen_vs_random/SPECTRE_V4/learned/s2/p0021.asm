.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
and cx, -117
btc rcx, rsi
or dl, dil
or bl, dl
cmp al, sil
jmp .bb_0.1
.bb_0.1:
or al, -90
cmp rax, 1682181214
adc edi, -83
test dl, -81
adc cl, dl
test sil, -119
adc cl, al
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
cmp al, cl
test eax, -31785616
cmp dl, bl
or cl, -104
mov al, cl
add al, -1
lea esi, qword ptr [rax]
xor dl, sil
sub rbx, 101
and dil, -120
sbb cx, 106
and al, 82
dec al
or bl, al
cmp rax, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
