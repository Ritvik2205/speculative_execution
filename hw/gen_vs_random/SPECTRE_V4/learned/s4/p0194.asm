.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 117
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmp rdi, 28
cmp al, 109
movsx cx, dl
xor ax, -22861
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
xor al, -6
and dl, al
mov al, -114
sub sil, -35
mov dx, 11552
cmp al, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
