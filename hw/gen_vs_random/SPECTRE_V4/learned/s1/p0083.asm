.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
or al, cl
cmp rax, -1547540200
xor dx, -43
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
dec al
sub cl, al
sub al, cl
cmp ebx, -27
add bl, dl
or dil, 5
sub rdi, -52
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xor cl, -101
mov cl, sil
lea bx, qword ptr [rax]
or bl, cl
cmp al, -122
cmp al, 75
adc ecx, 114
adc dl, 24
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
sbb sil, 24
or edi, -78
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
