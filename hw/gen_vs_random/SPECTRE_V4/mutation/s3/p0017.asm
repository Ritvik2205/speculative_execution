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
mov al, 125
xor dl, -123
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
bt rax, 59
btc rdx, rsi
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
cmp cl, 49
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and eax, -2001076187
cmovnl bx, ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
add bl, cl
adc cl, al
sbb al, -43
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 10
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi], 61
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
imul di
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
mov rdx, -3284511739993892328
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
btc dx, si
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
dec ax
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
bt rsi, 153
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
