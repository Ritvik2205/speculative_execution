.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
sub bx, di
or cl, 66
or bl, -86
cmovnz ecx, ebx
xchg rbx, rax
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmovno rdi, rdx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add al, 111 # instrumentation
cmovno edi, ebx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
sub al, cl
cmp dl, cl
imul ecx, ebx
sub esi, ecx
btr esi, 227
or rax, 980130592
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
add cl, -119 # instrumentation
sbb eax, -2001663753
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
xchg bl, al
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
mov cl, 14
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
sub rsi, -48
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
