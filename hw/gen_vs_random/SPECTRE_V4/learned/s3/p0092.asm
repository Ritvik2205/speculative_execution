.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and al, -1
adc bl, dil
sub dil, -40
or cl, cl
sub bl, sil
mov cl, sil
jmp .bb_0.1
.bb_0.1:
add dl, bl
mov bl, al
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and dl, sil
cmp al, -116
and rax, -779592432
xor dl, -66
dec cl
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
or dx, 13
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and al, 82
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
mov al, cl
cmp ebx, -19
mov cl, al
test cl, al
cmp sil, cl
xor eax, 308288205
dec al
xor ax, 15671
and al, 92
adc dil, al
adc al, 43
sbb bl, -75
and dl, cl
sbb cx, -114
adc ebx, -100
and bx, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
