.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
sbb dl, 75
neg rdx
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
cmovnbe rax, rdx
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
sub al, 59
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
btc ecx, 201
cmp al, al
xchg rcx, rbx
and dl, cl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
sbb rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
movzx rsi, sil
bt ax, 84
add al, 89 # instrumentation
cmovnle si, di
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
not sil
cmovnp rax, rbx
inc si
mov cl, al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
sbb edi, edi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
test dl, -81
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 1
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
cmovo esi, eax
sub esi, -10
bswap rbx
sub rsi, -104
adc dil, sil
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
