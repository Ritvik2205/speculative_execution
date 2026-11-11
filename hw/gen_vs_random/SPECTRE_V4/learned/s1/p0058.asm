.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
or cl, -104
mov sil, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
mov cl, dil
add bl, al
xor rax, -98
test edi, -1380439873
adc al, -59
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
mov dil, dl
movzx cx, dil
or di, 29
mov dl, al
adc dil, 112
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
adc cx, 18
mov bl, dil
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xchg dil, cl
and dil, dil
or dl, dil
test al, -24
cmp sil, dil
sbb ax, 1843
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
