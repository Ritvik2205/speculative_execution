.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
xor si, -73
xor al, bl
test dil, -26
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
mov sil, cl
test al, 52
or ax, 28571
and dl, -11
xor al, dil
xor al, cl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 95
sub cl, -94
sbb al, dl
test eax, -31785616
and bl, bl
xor ax, -6064
adc cl, al
sbb al, -39
sbb al, -39
and dil, -120
cmp al, 105
add ax, 6414
adc al, 43
sbb bl, dil
xor ax, 15671
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or dil, -16
xor dx, 7
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
