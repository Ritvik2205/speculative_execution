.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
test eax, -251558852
xchg cx, si
not eax
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
sbb rcx, -73
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
add dl, dl
mov al, 7
xor dl, -66
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
bt rax, 59
btc rdx, rsi
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
cmp cl, -105
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and eax, -1056713114
cmovnl bx, ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
add ax, -9762
adc cl, -86
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
or rbx, -107
or cl, -55
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
adc al, 116
adc cl, 31
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
dec bx
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
cmp dl, -82
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
bt bx, ax
bt cx, 31
add dl, 59 # instrumentation
cmovno rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
