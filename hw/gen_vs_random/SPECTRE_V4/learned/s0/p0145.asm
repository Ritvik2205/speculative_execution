.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 42
cmp eax, 89
sub al, 96
test al, dil
cmp di, -8
adc dl, 63
add dl, cl
add dl, dil
xchg rax, rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
mov bl, dl
xor ax, 30500
and al, 5
and dil, -23
sub al, 54
cmp cl, 100
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
and dl, al
sub dl, 107
xor dil, al
mov bl, al
or al, dl
adc bl, sil
adc dl, bl
mov sil, al
and cl, 126
test rax, -269735774
and sil, -84
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
