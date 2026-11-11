.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add sil, 110
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
imul rcx, rbx
test al, dl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
sbb eax, 2051746726
dec rcx
adc bx, -89
imul bl
movzx rax, sil
test edi, -1249897727
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
cmp edi, -104
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
cmp al, 70
dec edi
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
dec cx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
imul bx
mul esi
cmovp edx, edx
add edi, 11
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
cmp dil, dl
add cl, -117 # instrumentation
cmovs rbx, rdx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
movzx ebx, cl
cmovnp rsi, rsi
add eax, esi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
sub rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
