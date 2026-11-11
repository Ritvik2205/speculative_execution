.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 76
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 82
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
or eax, -1827868798
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
or di, dx
bt ebx, ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
cmovnz ecx, edi
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and ecx, 93
bts di, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
test dil, -72
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 43
and dl, 60 # instrumentation
cmovno edx, edx
cmovnle rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
