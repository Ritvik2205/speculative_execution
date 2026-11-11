.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -120
and al, 85
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
cmp eax, -1538116527
dec al
dec bl
add al, -127
sbb bl, 121
cmp ebx, 80
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
xor cl, -73
or dl, al
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and bl, 76
add sil, -18
sbb dil, 66
sub cl, -94
mov al, 7
cmovz edi, eax
adc al, -86
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
adc al, -70
test dl, 24
xchg ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
