.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
xor sil, sil
bt rdi, rdi
and sil, bl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
or bl, 127
or bl, 100
bt edi, edx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 54
cmovnle ebx, esi
test dil, -51
test edx, -372470678
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
