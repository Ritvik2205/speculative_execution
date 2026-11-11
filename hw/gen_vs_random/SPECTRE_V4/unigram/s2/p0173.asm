.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb edx, ecx
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
cmovb rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 83
mov edx, ebx
or edx, ebx
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
cmovbe bx, di
cmp si, di
btc cx, di
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
cmovle si, si
or edi, -64
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
xor di, 44
xchg rcx, rbx
xor bx, 106
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 23
mul ax
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
add rsi, 68
sub cl, -32
cmovns edi, ebx
add dl, -12 # instrumentation
cmovp edx, ebx
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
xor dx, bx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
adc sil, sil
add al, 111 # instrumentation
cmovno edx, esi
add bl, -43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
cmovs rbx, rdx
and dl, al
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
add rax, -874478885
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 59
test di, -19523
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 12
mov dl, dl
cmp rax, 2052654950
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
