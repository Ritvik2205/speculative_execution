.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, 22
test sil, -96
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
btr edx, 197
and bl, -74 # instrumentation
cmovns ebx, edx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 80
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
btc edi, 230
and ebx, 1
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and cl, -24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 53
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
test bl, cl
btr rdx, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
