.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 96
test dl, dl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
movzx esi, si
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
xor cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
cmp dl, sil
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
add al, bl
and rdx, 100
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], ax
inc edi
cmovle rsi, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
cmp ax, dx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 77
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
adc rdx, 74
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], esi
mov cl, cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
imul edi, ebx
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
cmp bl, 13
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
sbb edi, 82
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 88
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, eax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
bts esi, 241
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
mov rsi, 85
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
xchg ecx, esi
not rcx
add bx, bx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 52
imul ax, bx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
