.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
or di, 29
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 22
cmp cl, -80
btc rcx, 73
adc cl, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
sub ax, -1393
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 2
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
mul edx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 79
cmovl ax, di
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 31
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
cmovnp esi, ebx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
or dil, 5
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
btc ebx, 60
movsx eax, bx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
xor al, dil
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
test dl, al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
add cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 48
cmovnle rsi, rbx
sub bl, -89
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
