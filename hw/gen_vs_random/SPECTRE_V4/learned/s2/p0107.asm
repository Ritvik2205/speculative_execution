.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
sub al, 99
movzx di, dil
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 36
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx], 11
lea edx, qword ptr [rax]
lea esi, qword ptr [rcx + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
cmovle di, di
setno al
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
cmp dx, ax
add rdi, 105
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor al, -2
adc al, 36
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
imul ax, bx, 65
sub eax, -523763262
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 18
adc bl, bl
or bl, al
not rdi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
lea edx, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
adc dl, al
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
cmp al, -52
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 28
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 2
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
