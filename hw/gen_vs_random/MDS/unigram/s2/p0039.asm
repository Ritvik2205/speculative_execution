.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, dx
cmovnz edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
or al, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
jmp .bb_0.1
.bb_0.1:
cmovb si, si
and rdx, 62
and bl, 64
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
xor ecx, 30
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 96
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 31
or esi, 88
and cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
