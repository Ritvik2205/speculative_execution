.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 114
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
btc ecx, 233
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
movzx rsi, sil
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
cmovnbe rax, rdx
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
adc dil, sil
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
sub al, 127
sub esi, -10
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
cmp al, al
bt ax, 84
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
inc si
sbb rdi, rbx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
neg rdx
cmovnp rax, rbx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
sub cl, dl
sbb dl, -62
xchg rcx, rbx
bt edi, ebx
and dl, cl
cmp cl, al
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
sub rsi, -89
add al, 89 # instrumentation
cmovnle si, di
bswap rbx
cmovo esi, eax
not sil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb edi, edi
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
mov cl, al
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
