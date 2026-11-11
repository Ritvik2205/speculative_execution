.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
test dx, di
bts rdx, rax
or si, 0b1000000000000000 # instrumentation
bsr cx, si
neg bl
xchg dx, ax
mul dil
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
btr esi, esi
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
mov al, -114
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
adc rax, -827748523
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
add bx, bx
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
cmovnb eax, ecx
movsx eax, bl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
cmp dil, cl
test rdx, rcx
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
btc bx, 254
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
adc dl, dl
neg rcx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
imul dx, dx
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
mov bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
mov bl, al
inc ecx
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
cmovb cx, dx
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
bts ebx, 189
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
cmovs rdx, rcx
mov rdi, -7956777892145474940
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
