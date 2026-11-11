.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
xor al, al
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
dec al
add cl, bl
and al, -1
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
add dl, dil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
sub bl, cl
cmp dil, 53
test cl, -31
xor al, -82
cmp dil, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sbb sil, -124
sub bl, dl
dec dl
cmp sil, 113
test dl, -81
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
adc al, 41
sbb sil, dl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
xor si, cx
or ebx, -78
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and bl, 76
add al, -3
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
