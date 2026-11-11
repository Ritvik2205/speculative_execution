.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 30
test esi, 98
cmovs edx, eax
cmovnbe rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 41
add rsi, rax
add bl, 65 # instrumentation
cmovnp bx, cx
test eax, 1880179600
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
movzx dx, dl
adc dl, 1
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
neg dil
cmovz ecx, eax
sbb bl, 57
xor dl, 31
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and cl, 58
bt edi, esi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 78
add dl, 41
cmovnle ax, ax
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
cmovnl rdx, rdx
btc rcx, 32
add dl, 118 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
not si
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
bt ax, 96
add al, -10 # instrumentation
cmovnbe eax, ebx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 11
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
movzx dx, dl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
bts si, 30
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
bts eax, 209
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 79
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 58
bts ebx, 22
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
