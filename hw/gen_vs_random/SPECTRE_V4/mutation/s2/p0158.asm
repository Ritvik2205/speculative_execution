.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
test dl, 24
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
sbb dl, -106
sub esi, -10
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
sub al, -128
btc ecx, 233
neg rdx
inc si
cmovnbe rax, rdx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
sbb rdi, rbx
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
add al, 89 # instrumentation
cmovnle si, di
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
mov cl, al
cmovo esi, eax
adc dil, sil
cmovnp rax, rbx
cmp al, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
bswap rbx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
xchg rcx, rbx
movzx rsi, sil
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
bt edi, ebx
bt ax, 145
and dl, cl
sub rsi, -48
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
sbb edi, edi
not sil
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
