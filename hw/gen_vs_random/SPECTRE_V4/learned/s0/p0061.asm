.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
or sil, dil
and al, 100
and rdi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rdi]
cmp al, dl
cmp al, sil
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
test dx, 28394
add eax, 544045319
cmp eax, -2073187604
and rsi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rsi]
adc cl, -66
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
or eax, -1213318393
and al, -118
mov dl, -124
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
or dl, bl
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
sub dl, -16
sbb ax, 75
adc al, -86
adc sil, dil
cmp bl, cl
xor dil, al
and cl, dil
or al, dl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or dil, 5
test di, -19523
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
