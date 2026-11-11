.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
add sil, sil
or dil, 14
sbb cl, al
inc ecx
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 27
sbb bl, sil
imul dx, di
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 31
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
cmovns rax, rsi
cmovb di, di
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
test eax, -544019457
sub rdx, 22
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
movzx rsi, bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
not ax
sbb edi, 40
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
cmovnp rcx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
adc sil, dil
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
xchg rdi, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
xor al, 69
movzx dx, bl
sbb sil, dl
cmp cl, dil
xchg edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
