.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
movsx eax, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
imul dx, dx
mov al, 7
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
cmovb cx, dx
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
btc bx, 254
neg bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
mov rdi, -7956777892145474940
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
mul dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
bts rdx, rax
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
test rdx, rcx
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
mov bl, al
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
inc ecx
bts ebx, 197
mov bl, dl
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
neg rcx
cmp dil, cl
test dx, di
adc rax, 519150753
cmovs rdx, rcx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
btr esi, esi
xchg dx, ax
adc dl, dl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
add bx, bx
cmovnb eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
