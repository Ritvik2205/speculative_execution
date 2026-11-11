.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts dx, 50
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
and al, -82 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and sil, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
test bl, -14
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 27
cmovns ax, bx
bt edx, edi
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
xor cl, 98
and rax, rcx
cmovnz dx, dx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
