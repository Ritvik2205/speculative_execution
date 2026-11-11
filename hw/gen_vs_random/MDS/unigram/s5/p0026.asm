.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 28
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and si, -121
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 95
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
cmovnz rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and dx, cx
xor ecx, 8
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 14
xor sil, -46
xor bl, -102
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
