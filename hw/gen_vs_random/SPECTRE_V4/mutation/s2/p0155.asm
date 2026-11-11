.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
bswap rbx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
not sil
neg rdx
adc dil, sil
xchg rcx, rbx
cmovo esi, eax
sbb dl, 75
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
cmovnbe rax, rdx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
mov cl, al
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
add al, 89 # instrumentation
cmovnle si, di
sub al, 11
bt ax, 145
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
sub cl, dl
sub rsi, -104
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
cmovnp rax, rbx
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
movzx rsi, sil
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
btc ecx, 201
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
sbb rdi, rbx
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
cmp al, al
and dl, cl
bt edi, ebx
sub esi, -69
test dl, -125
inc si
sbb edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
