.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
xchg rcx, rax
test dil, al
bswap rax
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 92
add esi, ebx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
cmovs rcx, rdx
sub al, al
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 60
xor eax, ebx
movsx eax, sil
imul cl
xor al, dil
sbb dil, 66
xor bx, 25
sbb al, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 73
xchg esi, ebx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
cmovnbe si, cx
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
cmovnp rdi, rax
xor bx, 72
xor dl, 34
sbb cl, 20
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
sub eax, 2030845821
cmovp ebx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and bl, dl
sub esi, ebx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 80
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
