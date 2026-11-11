.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, bl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cmp al, bl
cmp ax, -22704
or bl, 80
adc cl, -54
test dil, 64
mov cl, bl
sbb dl, -106
cmp al, -78
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and al, -1
test edx, 1479885278
sbb ax, 7207
and al, 5
test ax, -6841
sbb al, -43
adc rax, 253624080
sbb cl, sil
cmp sil, dil
xor si, -73
sub al, 69
cmp di, -8
add dl, -82
sub cl, dl
add edx, 89
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and cl, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
xchg eax, esi
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
