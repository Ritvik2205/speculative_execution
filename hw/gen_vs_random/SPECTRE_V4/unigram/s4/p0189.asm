.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, al
test al, -85
movsx ax, bl
and ax, -197
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
or al, al
mul dl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 73
cmovp rcx, rbx
cmovl ax, dx
mov dil, dl
sub edx, ecx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 58
cmp edx, ecx
cmovs bx, ax
bswap ebx
add dil, bl
inc bl
neg eax
and dl, sil
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
adc bl, cl
xchg ax, dx
neg cl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rax
bt ecx, edx
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 51
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
cmovl ecx, edi
cmovbe dx, cx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
add cl, 111 # instrumentation
cmovnle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
xchg dil, cl
mov ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
