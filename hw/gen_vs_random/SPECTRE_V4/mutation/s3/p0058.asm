.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -1249897727
cmp dil, dl
cmp al, 114
test al, dl
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
movzx ebx, cl
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
imul rcx, rbx
add eax, esi
cmp edi, -104
dec cx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
add edi, 11
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
imul bx
movzx rax, sil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
cmovnp rsi, rsi
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmovp edx, edx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add cl, -117 # instrumentation
cmovs rbx, rdx
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
sbb eax, -1688332460
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
sub rbx, rdx
mul esi
dec edi
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
adc bx, -89
dec rcx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add sil, 110
imul bl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
mov rdx, rbx
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
