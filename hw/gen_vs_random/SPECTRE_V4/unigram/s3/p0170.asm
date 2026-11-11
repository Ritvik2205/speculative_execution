.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdi, cx
movsx eax, dx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
xor sil, 41
cmovnle edx, esi
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
test al, 57
cmp rdx, -49
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
dec di
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
imul bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
cmp bl, -79
sbb bl, al
xor rax, rbx
sub ax, dx
cmovno ebx, edi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 33
sub di, bx
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
test eax, ecx
xchg dl, dl
or sil, cl
btc dx, bx
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
bswap rbx
btr rbx, rcx
imul ebx
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], -75
xchg di, ax
test rax, -405021090
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
sbb sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
