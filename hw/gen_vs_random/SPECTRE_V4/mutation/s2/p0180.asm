.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dx, 24004
sub al, 11
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
mul rbx
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
add eax, 953442933
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
cmovns dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
movsx eax, di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
xchg cl, cl
xor rax, rcx
adc bl, -20
cmovl bx, cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
sbb edi, 107
neg bl
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
xchg dx, ax
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
movsx eax, bl
bts ebx, 197
inc ecx
cmp dil, cl
mov al, -71
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
mov rdi, -3495947874455269481
cmovnb eax, ecx
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
adc dl, dl
btc bx, 254
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
