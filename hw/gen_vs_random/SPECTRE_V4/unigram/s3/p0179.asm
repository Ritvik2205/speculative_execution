.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, ecx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 21
and rsi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 19
add eax, -1796699558
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
bt di, 98
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 6
bswap edi
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
xor eax, ecx
test edx, 573099753
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
xchg edi, ecx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
add ecx, 35
cmovb edx, ebx
add edx, 79
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
test cl, sil
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
add edx, 13
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 18
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdi]
add cl, -37 # instrumentation
adc eax, -39
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
dec rcx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovnp ax, ax
test rsi, 95
btc ebx, 94
adc bl, sil
bt eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
