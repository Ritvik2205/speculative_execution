.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rax
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
xchg rdx, rcx
and bx, 95
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 68
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
movzx esi, dil
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
cmovnbe rdi, rax
imul dx, si, 97
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
adc ebx, 117
cmp dl, 75
xor al, 56
sub rdx, 22
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
cmovle si, cx
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
mul dl
cmovs ax, si
sub ecx, 54
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 23
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 62
cmovnb rdx, rdi
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and bl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
sbb sil, sil
imul bx, si, 38
test edi, -1249897727
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
or cl, 71
mul edx
cmp ecx, 57
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
add si, si
xor edx, 67
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovb eax, eax
xor sil, al
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
imul rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
sbb al, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
