.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
bt ebx, edx
cmovnz rdx, rcx
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and cl, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
btr edi, 221
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rax, 1886208862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
