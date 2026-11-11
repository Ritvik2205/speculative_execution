.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
sub ax, cx
cmovnz ebx, edx
cmp bl, cl
sbb dl, al
and dl, al
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and eax, esi
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
inc dil
cmp edi, 3
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
mov si, cx
xor cl, cl
sub bl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
or bl, dl
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
movsx rbx, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg al, al
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
mov al, 82
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
mov rdi, -7956777892145474940
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
