.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
xor cl, cl
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
cmovns ecx, edx
or al, -61
and al, -86 # instrumentation
cmovns dx, cx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
not al
xor dl, cl
and cl, 11 # instrumentation
cmovp esi, edx
jmp .bb_0.1
.bb_0.1:
or bl, 100
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
and sil, sil
btc si, si
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
