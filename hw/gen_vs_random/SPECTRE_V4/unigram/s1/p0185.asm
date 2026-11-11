.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -59
imul rcx, rdi
sub bl, dl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
sbb rsi, 117
or al, -19
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
bt rax, 59
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
mov edx, ecx
cmp al, 116
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
mov rax, -8100960678429780222
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rbx]
sbb sil, -124
adc sil, sil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
and sil, -84
cmp dil, dl
inc ebx
imul dx, si, 80
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], 74
cmp edi, 3
neg eax
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 81
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 98
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and si, -70
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
or bl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 24
xchg edi, ecx
movzx ax, al
cmp cx, di
mov ebx, 817819255
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
