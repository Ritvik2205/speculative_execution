.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
bts ebx, 189
mov rdi, -3495947874455269481
btr esi, esi
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
adc dl, dl
mov al, -71
movsx eax, bl
neg rcx
adc rax, 519150753
xchg dx, ax
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
test dx, di
btc bx, 254
mul dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsr cx, si
mov bl, dl
imul dx, dx
mov bl, al
cmovnb eax, ecx
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
add bx, bx
bts rdx, rax
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
cmovs rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
cmovb cx, dx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
cmp dil, cl
neg bl
test rdx, rcx
inc ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
