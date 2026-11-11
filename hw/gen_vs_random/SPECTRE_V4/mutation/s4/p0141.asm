.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
mov rdx, rbx
add eax, esi
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
cmovp edx, edx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
add cl, -117 # instrumentation
cmovs rbx, rdx
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
dec rcx
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
dec cx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
imul bl
sub rbx, rdx
cmp dil, dl
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
cmp edi, -104
add edi, 11
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
test edi, -1249897727
mul esi
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
test al, dl
imul rcx, rbx
dec edi
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
imul bx
adc bx, -89
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb eax, 4
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
add sil, 26
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
movzx rax, sil
cmovnp rsi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
movzx ebx, cl
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
cmp al, 70
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
