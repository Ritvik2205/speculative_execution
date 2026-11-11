.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 13332
sub rdx, 44
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
sub al, -84
test sil, 1
cmp dl, cl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
xor rax, -98
adc si, -74
and al, -118
xor dil, sil
cmp al, 114
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
test rdi, rsi
add al, -4
sub al, 54
xor sil, 17
and al, sil
mov al, bl
or al, bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
sub dl, dil
test al, -38
mov al, cl
or dil, sil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
adc cl, -4
or al, sil
xor dx, 7
sub rax, 120
sbb bl, -79
cmp sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
