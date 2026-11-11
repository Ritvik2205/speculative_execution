.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
imul rdx, rdx, 44
or rax, rsi
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
sbb bx, ax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
bt dx, 193
add sil, -18
mov cl, bl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
test al, -24
cmp dl, dl
bt ecx, 247
and rsi, 0
cmp al, -53
mov dl, al
cmovp ebx, eax
and dl, 126
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
xchg di, di
add eax, 1017938146
mov esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
cmovnp rsi, rax
adc sil, 111
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
btr ebx, 87
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
add bl, 54
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
bt ecx, 135
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
