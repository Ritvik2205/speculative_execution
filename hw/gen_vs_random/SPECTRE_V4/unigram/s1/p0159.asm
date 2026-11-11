.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ecx, eax
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 71
add al, 111 # instrumentation
cmovno edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
cmovnp dx, ax
or esi, 32
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
xor dl, dil
add rax, rcx
test dil, 64
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
inc bl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
or rax, rax
movzx si, sil
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 36
cmp cx, 0
btc rdx, rax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 23
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
add sil, 40 # instrumentation
cmovnp rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
xor edi, 127
add ecx, 99
cmovno ebx, esi
btr dx, si
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], cx
mov bl, sil
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
add bl, bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 33
bt rsi, 242
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdi
btr bx, 42
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 29
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
xor cx, dx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
sub cl, bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
