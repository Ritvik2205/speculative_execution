.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx
xchg eax, edi
bts edi, 167
add cl, 23
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
add bl, 56 # instrumentation
cmovle rdx, rbx
neg edx
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 27
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
bts edx, 41
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
cmovb rsi, rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
add al, -26 # instrumentation
btr eax, 86
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
add rsi, rbx
cmovs bx, bx
mov rax, rdx
add eax, -1796699558
and sil, -49
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 72
imul eax
cmp ax, -15409
xor bl, 93
bts rcx, 63
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
add esi, edx
cmovle rbx, rax
bt bx, 41
cmovs bx, bx
cmovnbe edx, esi
sub bx, di
mov cl, cl
cmp di, si
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 33
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 84
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 94
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 23
test esi, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
