.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
add cl, 8 # instrumentation
adc cl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 18
or dl, al
btc bx, 50
not dx
add dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 28
xor sil, 56
cmp bl, dil
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 58
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
neg dl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], si
cmovs rax, rsi
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and dx, 1
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovz ecx, edi
mov bl, 45
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and ebx, 48
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 47
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
btr rax, rbx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
add cl, cl
cmovp rdx, rsi
and rbx, 110
cmovnb rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add bl, -72
cmovnp rbx, rdx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
