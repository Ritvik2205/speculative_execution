.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ax, 26170
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], di
cmovle rdi, rbx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 25
xchg eax, edx
neg al
movzx ecx, cl
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
bswap edx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 66
add cl, -77 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
mov rsi, 4368505613814921305
cmovno ebx, edi
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
movsx rdx, al
xchg dl, al
sub bl, dl
or esi, eax
sbb bl, dil
add sil, 3
cmovle rdi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and dl, bl
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
or al, al
and sil, bl
cmp ecx, 27
bt rax, rax
add al, 116 # instrumentation
cmovns ebx, eax
add al, -29
cmp dl, bl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
add al, al
sub edi, 100
adc al, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
