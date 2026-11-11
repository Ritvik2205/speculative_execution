.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
imul bl
imul rcx, rbx
dec rcx
dec cx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
test al, dl
dec edi
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add sil, 110
cmp edi, -104
cmp dil, dl
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
cmovp edx, edx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
movzx ebx, cl
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
test edi, -1249897727
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
sbb eax, -984782068
mov rdx, rbx
add edi, 11
add cl, -117 # instrumentation
cmovs rbx, rdx
cmovnp rsi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
adc bx, -89
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
movzx rax, sil
add eax, esi
mul esi
imul bx
cmp al, -23
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
