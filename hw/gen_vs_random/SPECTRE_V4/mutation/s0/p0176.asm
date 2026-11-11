.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, dl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
dec rcx
add cl, -117 # instrumentation
cmovs rbx, rdx
imul rcx, rbx
movzx rax, sil
sbb eax, 2051746726
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
imul bl
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
test al, dl
add sil, 26
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
adc bx, -89
add eax, esi
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
cmp edi, -104
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
imul bx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmovp edx, edx
sub rbx, rdx
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
movzx ebx, cl
mov rdx, rbx
dec cx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
dec edi
add edi, 11
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
cmovnp rsi, rsi
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
test edi, -1249897727
mul esi
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
cmp al, 70
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
