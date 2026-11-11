.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 82
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
adc dl, dil
sub al, 63
mov al, dl
sbb al, -4
adc dil, bl
movsx ax, dl
test al, 115
xor al, -84
add al, dil
xor ax, -22861
neg sil
and dil, 8
xor dil, 117
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 61
mov dil, al
sub cl, 78
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and sil, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub sil, dl
test eax, 1947430392
add dil, cl
cmp al, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
