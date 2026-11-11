.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
sbb dl, -62
neg rdx
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
cmovnbe rax, rdx
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
sub al, 26
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
btc ecx, 233
cmp al, al
xchg rcx, rbx
and dl, cl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
sbb rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
movzx rsi, sil
bt ax, 145
add al, 89 # instrumentation
cmovnle si, di
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
bts ebx, 189
inc ecx
cmp dil, cl
mov al, 7
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
