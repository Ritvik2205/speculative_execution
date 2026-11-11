.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rax, rdx
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
sub al, 29
sub esi, -69
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
movzx rsi, sil
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
test dl, -81
cmp al, al
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
sub rsi, -89
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
sbb edi, edi
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
sbb rdi, rbx
mov cl, al
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
cmovnp rax, rbx
xchg rcx, rbx
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
add al, 89 # instrumentation
cmovnle si, di
bswap rbx
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
bt edi, ebx
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
neg rdx
not sil
cmovo esi, eax
cmp cl, al
bt ax, 248
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and dl, cl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
adc dil, sil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
sbb dl, -106
btc ecx, 233
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
inc si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
