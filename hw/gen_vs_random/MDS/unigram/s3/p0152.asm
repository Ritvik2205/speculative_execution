.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rsi
and rax, -1378371328
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 86
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
bt edx, 75
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
bt di, si
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 77
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
bts rbx, 97
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 28
or dil, -52
xor al, al
and bl, 76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 81
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and al, -2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
