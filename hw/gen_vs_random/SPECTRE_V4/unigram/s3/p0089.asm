.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
xor dl, sil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
btc rsi, rbx
test cl, -119
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
movzx ecx, sil
or rax, rsi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
xchg esi, ecx
cmovnl si, dx
and ax, 62
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 41
sub dl, 107
xor eax, 550678097
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
sub dil, -28
cmovnb rsi, rax
cmovb rsi, rax
adc dl, 64
bswap eax
btr dx, si
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
btr rdx, rsi
neg bl
or cl, -55
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
or edx, -128
bts edx, 116
test bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
cmovnp cx, ax
and rdx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rdx]
cmovbe cx, di
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
mov dl, 81
adc sil, bl
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
