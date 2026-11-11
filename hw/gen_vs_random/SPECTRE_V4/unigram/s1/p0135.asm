.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 69
cmovo dx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
test dl, dl
cmp bx, 27
mul ax
btc rcx, rdx
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
movsx rdi, bx
cmp dl, dl
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
test dil, dil
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb di, ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
btc edx, 4
btc rax, 89
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
or bx, -111
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
sub bl, 17
movzx ebx, bl
imul dx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
add dl, 31 # instrumentation
cmovnl bx, bx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
cmovp esi, esi
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 52
adc ax, 33
cmp dl, dl
sub al, dl
btc eax, 86
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
btc ax, si
bts rax, rax
bts rdx, rbx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
sub cl, dil
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
add rdx, rbx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
cmovnp rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
