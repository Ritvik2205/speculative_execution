.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl cx, cx
xchg rsi, rax
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
adc al, dil
add bl, 69 # instrumentation
cmovnbe dx, cx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 91
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
mov dl, bl
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
xor al, -82
neg bx
add sil, bl
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
or si, 85
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and bl, -30
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
movsx rbx, si
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
cmp ax, 26170
and eax, -1056713114
cmovnbe di, ax
cmovnb ax, dx
cmovnp cx, ax
cmp sil, cl
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
cmovnb edi, esi
test bl, 110
cmovbe rdx, rsi
bt edi, ebx
sbb sil, -124
cmovnb edx, ebx
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 57
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 29
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rdi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
movzx cx, al
add al, 41 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
