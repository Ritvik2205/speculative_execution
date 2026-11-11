.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
add eax, esi
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
add cl, -117 # instrumentation
cmovs rbx, rdx
imul bl
sub rbx, rdx
dec edi
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
movzx rax, sil
adc bx, -89
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
movzx ebx, cl
imul bx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add edi, 11
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
dec cx
test al, dl
add sil, 110
mul esi
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
cmp dil, dl
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
cmovp edx, edx
imul rcx, rbx
cmp al, -23
dec rcx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
cmp edi, -104
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
mov rdx, rbx
test edi, -1249897727
cmovnp rsi, rsi
sbb eax, 2051746726
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
