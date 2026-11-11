.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
test ax, -23852
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
add dl, dil
imul eax
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
cmovz ebx, edi
add eax, 1255256879
and rdi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdi]
adc dl, 49
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
sub ax, -1908
and di, -65
add dl, 74 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
movzx eax, al
bt ecx, esi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and bx, 76
or ax, 28571
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
cmovbe edi, edi
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rcx
cmp eax, 89
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdi]
adc sil, -63
cmp al, dil
test cl, -52
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
test al, cl
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
test cl, -119
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
bt dx, bx
cmovbe cx, di
add bl, 95 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 11
xchg dl, bl
mul si
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
