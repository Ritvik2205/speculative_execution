.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 27
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rdi, -2
mul ax
sbb rax, 183833426
test ecx, 10
and rdi, -2
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, 59
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xor bx, dx
add dl, al
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
cmovp ax, di
or di, 63
test dil, 10
and bl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 18
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
sub dl, al
cmovnbe rax, rdi
cmp ax, -15409
add dil, 16
cmovnp rsi, rsi
imul rdi, rsi, 57
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
mov rdx, rax
cmovnle rbx, rbx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
cmovz rax, rsi
or bl, sil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rsi
add rdi, rdx
sub rdx, 22
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
or eax, 2007177863
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
