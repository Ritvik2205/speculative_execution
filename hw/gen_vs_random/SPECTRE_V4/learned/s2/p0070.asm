.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
xor ax, 30500
test sil, al
xor ax, 13332
sub bl, dil
sbb al, -43
or dil, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
cmp ax, -22704
and dl, -53
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
sub cl, bl
cmp al, cl
movsx dx, al
test edx, -38580719
adc al, cl
and dl, -53
test cl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
