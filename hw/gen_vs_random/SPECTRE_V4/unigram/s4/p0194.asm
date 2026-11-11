.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
xchg bx, di
cmovnl rax, rbx
add edi, 11
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
adc dil, 46
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 13
cmovo rdi, rdi
bswap esi
cmovp edi, edi
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
btc dx, di
cmovnl rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
add cl, cl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx
not ax
movzx cx, cl
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
sbb al, cl
add rdx, rbx
cmp dx, 54
inc eax
and rax, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
cmovle rax, rsi
dec dil
cmp cl, 49
cmovz si, si
cmovnz ebx, ecx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
cmp rdi, 81
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 64
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
adc cl, al
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
test bl, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
