.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -75 # instrumentation
sbb eax, -676736552
btc rdi, rbx
mov dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
cmovl si, dx
cmovnb ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
movsx si, cl
sub rsi, -48
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
imul dl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
neg cx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovnz rdi, rsi
adc rcx, 57
test ecx, -907816607
cmp dl, cl
mov cl, al
or rax, 185991441
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
xchg di, di
add eax, -1628652110
mov esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
cmovnp rsi, rax
adc sil, 88
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
btr ebx, 87
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
add bl, -38
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
test al, bl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
cmp dl, dil
sub cl, dl
cmp dl, al
xor al, bl
sbb dl, cl
bt ecx, 177
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
