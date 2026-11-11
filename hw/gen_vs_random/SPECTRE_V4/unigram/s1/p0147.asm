.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, 84
xor rdi, rsi
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
movzx edi, ax
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
cmovnle dx, di
test cl, -52
test al, dl
cmovnle rsi, rbx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx], 58
bt rdi, rcx
cmovno esi, eax
add al, 23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 69
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
sub bx, bx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and dil, 8
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
add dl, -58 # instrumentation
xchg bx, dx
cmovnle cx, ax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], ax
add al, -109 # instrumentation
cmovns si, di
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
movzx ecx, bx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
btr si, dx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
add dil, 75
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
sub al, sil
cmovz edx, edx
test rbx, 1219566903
cmovnb di, ax
movzx ebx, al
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
movsx edx, bl
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
or cl, cl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
