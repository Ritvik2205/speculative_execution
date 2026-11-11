.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -119
sbb rax, 59
imul edx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
movzx di, dl
cmp rbx, -66
neg rdi
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
cmovnp ebx, ecx
xor eax, eax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
bt si, ax
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
mov bl, al
neg di
cmovnb ebx, edx
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
cmovns di, ax
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
add ax, -9762
adc cl, -66
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
or rbx, -108
or cl, -55
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
adc al, 116
adc cl, -4
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
dec bx
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
cmp dl, 83
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
bt bx, ax
bt cx, 31
add dl, 59 # instrumentation
cmovno rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
