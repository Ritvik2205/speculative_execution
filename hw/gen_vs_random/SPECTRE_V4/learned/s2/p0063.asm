.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edx
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
adc ebx, -100
or al, -16
and dl, al
adc sil, dl
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
and al, -12
mov al, 125
and al, 59
adc sil, cl
sbb dl, -71
adc dl, cl
and di, -65
inc eax
xor cl, -73
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
neg al
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
add cl, sil
and cl, -128
test al, 18
cmp rbx, -91
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
