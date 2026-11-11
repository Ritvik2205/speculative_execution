.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
xor dil, -3
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and dl, 97 # instrumentation
cmovnp ax, si
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
or dil, -78
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
bts ax, 22
cmovns ecx, esi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
cmovle edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
