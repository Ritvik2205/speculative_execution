.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and si, di
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
cmovbe eax, ecx
and rdx, rcx
xor sil, -15
test esi, edi
and sil, 8 # instrumentation
cmovz rdi, rsi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and dl, 17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
cmovnle rdx, rax
test rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btc rcx, 11
test rdi, 29
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
