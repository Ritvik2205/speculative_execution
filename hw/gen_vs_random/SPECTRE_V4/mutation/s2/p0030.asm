.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
mov rdx, rbx
add eax, esi
cmp al, 70
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
movzx ebx, cl
imul rcx, rbx
cmovnp rsi, rsi
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
dec edi
movzx rax, sil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add sil, 110
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
imul bl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
dec cx
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
imul bx
test al, dl
add edi, 11
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
sub rbx, rdx
adc bx, -89
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
cmp dil, dl
cmovp edx, edx
cmp edi, -104
add cl, -117 # instrumentation
cmovs rbx, rdx
sbb eax, 1081973675
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
mul esi
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
