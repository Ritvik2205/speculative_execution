.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 116
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and ax, -197
or cl, sil
cmp eax, -2073187604
sub dil, cl
test bl, -16
or cl, al
adc al, dil
test cx, 19367
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xor ax, 45
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and dil, -120
test al, dl
sbb edi, -94
adc al, cl
and al, -12
cmp dl, 45
adc al, bl
test al, -24
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
sub dil, 35
or ax, -30990
sub dl, -16
cmp al, 98
xor dl, al
btc rdi, rax
and dl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
