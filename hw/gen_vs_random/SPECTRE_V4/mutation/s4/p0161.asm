.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
xor ax, 15671
cmovnp edx, edx
adc rbx, rdi
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmp al, dl
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add al, 32 # instrumentation
adc rax, -324435035
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
sbb bx, 94
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
mov eax, -1056201206
adc ax, 17267
cmp dl, al
mov dl, 81
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
add cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
xchg di, di
add eax, 1255256879
mov esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
cmovnp rsi, rax
adc sil, 77
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
bt ecx, 247
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
