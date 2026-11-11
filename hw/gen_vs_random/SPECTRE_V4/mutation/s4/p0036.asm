.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, 11
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
add sil, 110
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
cmp edi, -104
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
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
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmovnp rsi, rsi
cmp al, 114
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
add eax, esi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
sub rbx, rdx
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
imul bx
imul rcx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
cmovp edx, edx
test al, dl
sbb eax, 1081973675
dec cx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
movzx ebx, cl
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
movzx rax, sil
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
dec edi
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
adc bx, -89
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
add cl, -117 # instrumentation
cmovs rbx, rdx
mul esi
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
mov rdx, rbx
dec rcx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
cmp dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
