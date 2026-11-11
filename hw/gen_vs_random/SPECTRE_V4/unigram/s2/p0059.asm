.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, al
cmovnle cx, dx
add sil, 56 # instrumentation
cmovle rcx, rsi
add rax, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
xchg ax, bx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
test cl, -89
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 75
cmovnbe rsi, rax
add sil, al
and ax, 35
mul rbx
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rax
cmp sil, 88
or sil, bl
mov rdi, 99
test dl, 19
xor cl, -85
bts edx, 53
mul rbx
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
sbb al, 32
and bl, -63
cmovnle edx, esi
cmovs bx, dx
test esi, 81
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
test dl, sil
and dil, 96
xor bx, si
cmovs rcx, rdi
sbb edi, 25
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
xchg rsi, rbx
sbb sil, 108
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
xor sil, 56
cmovnp rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
