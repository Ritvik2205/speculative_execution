.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb si, cx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
movsx dx, cl
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
movzx cx, bl
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
and cl, 32
cmovb rax, rsi
bswap esi
or al, -90
cmovno rdx, rdi
imul dil
xchg rbx, rdx
mul dil
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
sbb ax, 7207
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
xor cl, -15
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
bt esi, edx
or bl, bl
xor rbx, rdx
xor al, dl
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
mov ecx, ebx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
or al, -16
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and ax, 26513
adc rax, -827748523
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
bt rcx, rcx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
btc rcx, rdx
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
adc ebx, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
