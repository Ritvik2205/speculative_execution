.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
btc rdi, 89
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
btc edi, 125
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
mul ax
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 50
add bx, si
adc sil, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 93
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
sub dx, -12
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
bts rax, 19
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
sub edi, 99
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
adc cx, 27
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
cmovnp rcx, rdi
adc rcx, -99
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
sub al, dil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
sbb bl, 121
sub rdi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
cmovnbe rax, rdi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
adc sil, 111
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
sbb al, 102
and rdi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdi]
xchg dx, dx
test cl, 78
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
cmp rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
