.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
cmp eax, 512128713
sbb dil, 5
or dil, 89
add bl, dl
sub dl, 107
or si, 85
cmp ax, 28568
adc dl, cl
and al, -12
adc dl, al
sub al, sil
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
cmp cl, dl
sub al, -128
cmp sil, 127
mov dil, 73
test cl, 78
sub al, bl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
adc dl, bl
adc dl, 2
sub al, 63
cmp rdi, 28
or al, 27
movsx bx, al
adc bl, sil
xor dil, 37
sbb bl, -98
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
mov dl, sil
xor ax, 13332
adc dl, cl
mov bl, dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
