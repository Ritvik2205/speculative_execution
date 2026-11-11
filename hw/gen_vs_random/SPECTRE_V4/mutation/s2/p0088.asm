.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
imul rcx, rbx
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmp dil, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
mov rdx, rbx
sbb eax, 4
dec rcx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
imul bx
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
cmovp edx, edx
adc bx, -89
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
dec cx
movzx ebx, cl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
add edi, 11
cmp edi, -104
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
test al, dl
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
mul esi
imul bl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmovnp rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add sil, 26
movzx rax, sil
add cl, -117 # instrumentation
cmovs rbx, rdx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
dec edi
add eax, esi
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
cmp al, 19
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
