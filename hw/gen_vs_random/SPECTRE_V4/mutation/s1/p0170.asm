.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
sub rbx, rdx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
cmp dil, dl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmp edi, -104
cmp al, 81
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
add sil, 110
dec rcx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
add eax, esi
mul esi
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
cmovnp rsi, rsi
dec edi
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
imul bl
mov rdx, rbx
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add edi, 11
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
cmovp edx, edx
imul bx
test al, dl
dec cx
add cl, -117 # instrumentation
cmovs rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
imul rcx, rbx
movzx rax, sil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
movzx ebx, cl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
sbb eax, -984782068
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
adc bx, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
