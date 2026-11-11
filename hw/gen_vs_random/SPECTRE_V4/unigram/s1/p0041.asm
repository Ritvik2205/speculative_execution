.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not cx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
sbb bl, dl
test ebx, 1263899340
cmovnbe di, cx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 1
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add rbx, 98
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
adc al, -58
sub dl, 43
or dil, dl
cmovnbe bx, cx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 43
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
add bl, -72
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
movzx ax, dil
test bl, al
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 29
cmovnbe rsi, rdx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
cmovnp eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
xor rsi, rbx
test rsi, 54
test cl, sil
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 86
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and cl, dil
xor cl, -101
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 33
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
add rdx, rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
add rsi, rbx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
