.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
cmovl rcx, rax
adc bl, al
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
cmp sil, 88
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 52
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
imul rsi, rbx
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
xor bx, 58
cmovle rax, rcx
sbb ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
cmp al, 81
cmovb ebx, ebx
bt ebx, edx
xor sil, 56
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 21
test al, dil
adc ax, ax
add rdx, 55
xchg cl, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and sil, -49
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 20
or edi, ebx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
imul cl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
cmovz rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
cmp al, dil
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 44
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
not bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
