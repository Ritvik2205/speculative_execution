.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1247892360
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
adc eax, -1127383570
sbb eax, 1002977021
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
cmp dl, 83
movsx edi, al
cmovl edx, esi
mov eax, eax
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
or rdi, -41
xor dx, -43
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
add al, al
sub rax, -1680844889
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
sbb di, -105
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and dl, -53
sbb dl, bl
add dl, -8
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and al, bl
and di, -34
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
cmovnbe rsi, rdi
xchg ecx, eax
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
movsx dx, al
sub dl, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
adc dl, al
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
or bl, -80
mov dl, al
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
add dl, dl
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
imul bx, bx
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
