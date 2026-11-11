.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
sub dl, -16
test esi, -222751961
adc sil, 111
adc dl, al
test al, 115
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
add dil, sil
xor bx, 106
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
xor al, dil
mov bl, cl
sub eax, -90064733
or cl, 83
sub bx, 24
adc al, sil
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
sub al, 11
movsx cx, sil
add al, -55
xor dil, 117
or al, -88
mov cl, bl
mov cl, dl
add bl, dl
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and al, 5
or cx, 59
sub al, 54
btc rdi, rsi
cmp al, 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
