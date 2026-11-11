.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
adc dil, cl
cmovnz rdi, rbx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
or rbx, -107
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
sub al, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
add bl, -24 # instrumentation
cmovnbe dx, dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
cmovnp ebx, edi
add bl, -30 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
mov cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
bts rdx, 6
movsx eax, ax
cmovno rdx, rsi
not al
bt edi, ebx
xor rdx, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
btc dx, ax
xor si, -73
add bl, al
test al, -26
cmp dl, 23
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 91
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
cmovs bx, dx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
test al, al
cmovz edx, edi
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
cmp bl, -16
or bx, -33
and rsi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rsi]
mov sil, sil
add dil, 7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
