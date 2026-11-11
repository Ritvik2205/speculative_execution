.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, cl
add rdi, 111
mov al, dl
cmovns ecx, edi
adc eax, 948001339
mov edi, -744634650
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
btc rsi, 36
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
movzx rdi, sil
and cl, bl
btr rcx, 134
not dx
adc cl, al
imul ecx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and cl, cl
not bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
or eax, -1213318393
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
xchg dl, bl
test bl, al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
cmp edi, ebx
adc al, dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
bswap rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
btc edi, esi
cmp al, 98
mov dl, bl
inc dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -103
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
