.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
setnb al
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
cmovz eax, ecx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 71
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
xor eax, 181978569
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 88
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, si
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
cmp bl, dl
xor cl, dil
lea esi, qword ptr [rdi]
and bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
add rdx, 92
sub dil, -10
lea edi, qword ptr [rbx]
adc al, 36
cmovnbe si, di
sbb rax, 183833426
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
sub bl, bl
cmovnp ecx, esi
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sbb cl, 20
bt esi, 227
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
xor edi, 85
cmovnbe rbx, rdi
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
sbb cl, 20
xor dil, dl
cmovns rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
