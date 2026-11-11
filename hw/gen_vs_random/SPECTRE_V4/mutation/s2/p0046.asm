.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
mul esi
movzx ebx, cl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
cmovnp rsi, rsi
imul bx
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
add eax, esi
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
cmovp edx, edx
sbb eax, 1081973675
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
cmp al, 114
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
dec cx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
mov rdx, rbx
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
movzx rax, sil
add edi, 11
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
adc bx, -89
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
cmp dil, dl
dec edi
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
add cl, -117 # instrumentation
cmovs rbx, rdx
add sil, 26
test edi, -1249897727
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
imul rcx, rbx
imul bl
cmp edi, -104
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
test al, dl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
