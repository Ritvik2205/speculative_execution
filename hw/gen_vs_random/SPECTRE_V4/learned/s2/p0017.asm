.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, 4
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
movzx rax, sil
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 84
cmovp edx, edx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
mul esi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
adc al, -58
btc edx, 46
cmovns ax, ax
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 74
or rax, 86
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmp edi, -104
imul bx
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
add sil, 110
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
cmovnp rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 55
cbw
cmp bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
cmovnbe rbx, rdx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 73
add bl, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
