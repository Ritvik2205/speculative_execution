.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
add bl, 7 # instrumentation
cmovnl esi, edx
movzx eax, al
add dl, -124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
cmovle rsi, rdx
xor al, 29
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
sub rax, -701741274
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
add rdi, 105
cmp al, 70
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
mov rsi, rcx
and sil, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 79
sub bl, bl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
cmovnle rbx, rbx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
btc rsi, 225
xchg bl, sil
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 66
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
or eax, 2007177863
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor dl, dl
not bx
cmovs rax, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sub dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
