.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
not sil
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
cmovnp rax, rbx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
adc dil, sil
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
cmovo esi, eax
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
movzx rsi, sil
cmp cl, al
sub cl, dl
sbb edi, edi
xchg rcx, rbx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
test dl, -102
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
btc ecx, 201
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
sbb dl, -71
neg rdx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
sub al, 127
sbb rdi, rbx
sub rsi, -89
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
bswap rbx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
add al, 89 # instrumentation
cmovnle si, di
cmp al, al
cmovnbe rax, rdx
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
bt edi, ebx
bt ax, 248
and dl, cl
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
mov cl, al
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
sub esi, -10
inc si
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
