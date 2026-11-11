.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edx
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
cmovnbe ebx, edx
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
and dil, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or bl, 13
test dl, al
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
test dil, -51
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
test si, bx
or rsi, 83
cmovnle eax, edi
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
