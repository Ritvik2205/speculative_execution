.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
xchg edi, edx
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
sbb cx, 106
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
cmp dx, 58
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 14
btc rsi, rdx
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
cmovs cx, ax
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
btc esi, 63
or bl, 61
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rbx]
cmovle si, si
bts dx, 96
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
cmovnz ebx, edi
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
movzx rax, cx
movsx si, dl
sbb sil, 24
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
adc bl, dil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 55
imul esi, edi
or di, 0b1000000000000000 # instrumentation
bsr cx, di
or rbx, 69
xor dx, 7
or esi, ecx
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
xor ecx, 58
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 66
cmovnle esi, edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
