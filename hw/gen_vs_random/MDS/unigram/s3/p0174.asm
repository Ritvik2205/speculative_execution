.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -109 # instrumentation
cmovns rdi, rdi
or di, -18
or dil, -52
cmovnz eax, edx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
cmovb ecx, eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and cl, 95 # instrumentation
cmovns rbx, rbx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
xor cx, 100
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
