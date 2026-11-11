.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -74
add cl, bl
sbb cl, 127
cmp al, sil
adc dl, cl
or al, 27
or bl, al
cmp dl, cl
cmp al, -116
test bl, -91
sbb cl, 45
cmp rax, 40
mov dl, -124
btc rcx, rbx
and sil, -84
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
xor di, bx
mov al, sil
cmp al, -122
xor al, 48
xor dil, cl
test dil, -5
mov dil, sil
xor cl, dil
and dl, -104
add al, 40
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor ax, -22861
neg dl
sbb eax, 316213929
sub rcx, -74
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
sbb cx, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
