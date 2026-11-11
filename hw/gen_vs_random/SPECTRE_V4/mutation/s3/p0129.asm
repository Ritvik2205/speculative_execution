.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr esi, esi
btc bx, 254
cmp dil, cl
test rdx, rcx
cmovb cx, dx
bts rdx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
inc ecx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
cmovs rdx, rcx
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
movsx eax, bl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
cmovnb eax, ecx
test dx, di
mul dil
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
add bx, bx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
mov bl, al
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
imul dx, dx
adc dl, dl
neg rcx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
mov rdi, -7956777892145474940
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
adc rax, 253624080
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
bts ebx, 189
mov al, -114
neg bl
xchg dx, ax
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
