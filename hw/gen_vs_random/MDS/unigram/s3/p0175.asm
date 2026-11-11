.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
cmovnle si, si
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and sil, 8 # instrumentation
cmovz rbx, rsi
and dl, -127 # instrumentation
cmovno ebx, edi
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and cl, bl
and al, -87 # instrumentation
cmovo ax, dx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
cmovnz edi, ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, rax
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and bl, 3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
cmovns rax, rsi
and cl, 118 # instrumentation
cmovp esi, edx
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
