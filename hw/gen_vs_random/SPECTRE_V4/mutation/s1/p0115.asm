.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
xchg rcx, rbx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
bswap rbx
cmovnbe rax, rdx
cmovnp rax, rbx
neg rdx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb edi, edi
test dl, 24
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
sbb dl, 53
and dl, cl
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
sub al, 29
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
mov cl, al
cmovo esi, eax
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
sub esi, -69
adc dil, sil
not sil
inc si
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
movzx rsi, sil
add al, 89 # instrumentation
cmovnle si, di
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
bt ax, 145
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
cmp al, al
btc ecx, 201
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
bt edi, ebx
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
sbb rdi, rbx
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
sub rsi, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
