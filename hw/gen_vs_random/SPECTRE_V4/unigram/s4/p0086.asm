.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
mov al, cl
adc bl, 0
and si, ax
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 6
neg dil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
sub bl, dil
adc sil, dil
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
inc rdx
mul ax
adc al, -86
xor ebx, -62
add bl, bl
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
test sil, 68
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rbx
cmovo si, si
cmp dx, di
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
xchg cx, ax
test si, 62
and dil, -61
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
cmovnbe edx, ecx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
cmp rbx, rdi
add dl, -85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
bswap ecx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub cl, dl
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and bl, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
inc cx
add dil, bl
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
movzx ecx, dl
sbb edx, edx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
