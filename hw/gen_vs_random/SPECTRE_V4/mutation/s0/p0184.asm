.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb edi, edi
bt ax, 248
sub rsi, -48
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
xchg rcx, rbx
test dl, -81
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
inc si
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
mov cl, al
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
bswap rbx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
adc dil, sil
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
cmp al, al
not sil
and dl, cl
neg rdx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
cmovnbe rax, rdx
add al, 89 # instrumentation
cmovnle si, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
cmovo esi, eax
sub al, 69
sbb rdi, rbx
btc ecx, 201
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
sbb dl, 53
cmovnp rax, rbx
sub esi, -69
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
movzx rsi, sil
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
