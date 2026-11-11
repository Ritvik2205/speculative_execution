.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, -101
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, -101
cmovs rax, rdx
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
movsx eax, si
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 38
cmp al, 19
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and dil, sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and al, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
