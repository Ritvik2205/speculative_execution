.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
neg rdx
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
cmovo esi, eax
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
sbb rdi, rbx
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub rsi, -104
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
cmovnp rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
bswap rbx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
xchg rcx, rbx
cmovnbe rax, rdx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
not sil
btc ecx, 233
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
mov cl, al
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
bt edi, ebx
sub al, 69
adc dil, sil
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
sbb edi, edi
add al, 89 # instrumentation
cmovnle si, di
sbb dl, -106
test dl, 114
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
and dl, cl
movzx rsi, sil
cmp al, al
inc si
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
sub esi, -10
cmp cl, al
bt ax, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
