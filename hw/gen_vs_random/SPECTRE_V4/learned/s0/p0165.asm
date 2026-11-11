.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, 4
cmp al, 114
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
movzx rax, sil
dec cx
cmovp edx, edx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
mul esi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
adc al, 36
cmovz eax, esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
or cl, bl
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmp edi, -104
imul bx
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
adc bx, -89
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 59
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
cmp dil, dl
mov rdx, rdi
movzx dx, bl
test eax, -544019457
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and al, dil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
imul rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
add bl, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
