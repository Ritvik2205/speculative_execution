.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
cmovnp rax, rbx
neg rdx
cmp al, al
btc ecx, 233
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
add al, 89 # instrumentation
cmovnle si, di
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
xchg rcx, rbx
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
test dl, 24
sub al, 0
mov cl, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
sub rsi, -48
sbb dl, 53
bt edi, ebx
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
bswap rbx
inc si
and dl, cl
not sil
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
sbb edi, edi
bt ax, 248
cmovo esi, eax
cmovnbe rax, rdx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
sbb rdi, rbx
adc dil, sil
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
sub esi, -69
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
movzx rsi, sil
cmp cl, al
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
