.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, dl
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
cmovs edx, eax
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
not ecx
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
add al, 5
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 63
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
add cl, -42 # instrumentation
adc sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
mov rbx, 9101099553822202722
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
cmp al, al
or dl, dil
adc al, 36
bswap rbx
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
xor cl, dl
cmovnbe ebx, eax
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
sub dl, al
add rdx, 96
lea rax, qword ptr [rsi + rdx]
xchg ecx, esi
neg ebx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 90
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
test eax, -558243208
and sil, -49
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
