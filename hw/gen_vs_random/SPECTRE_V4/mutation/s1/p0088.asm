.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
cmovp edx, edx
test al, dl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
cmp edi, -104
imul bx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
add eax, esi
imul bl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
movzx rax, sil
cmovnp rsi, rsi
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
cmp al, 70
mov rdx, rbx
mul esi
cmp dil, dl
sub rbx, rdx
adc bx, -89
add cl, -117 # instrumentation
cmovs rbx, rdx
imul rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
dec rcx
test edi, -1249897727
dec edi
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
add sil, 26
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
sbb eax, -1688332460
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
dec cx
add edi, 11
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
movzx ebx, cl
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
