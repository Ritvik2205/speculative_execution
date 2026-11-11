.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
cmp al, 70
test al, dl
cmp dil, dl
add cl, -117 # instrumentation
cmovs rbx, rdx
dec rcx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
dec edi
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
movzx ebx, cl
imul bx
movzx rax, sil
cmovp edx, edx
imul rcx, rbx
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
mov rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
cmp edi, -104
adc bx, -89
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
mul esi
add eax, esi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
dec cx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
add edi, 11
sbb eax, 1081973675
imul bl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
add sil, 110
cmovnp rsi, rsi
sub rbx, rdx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
