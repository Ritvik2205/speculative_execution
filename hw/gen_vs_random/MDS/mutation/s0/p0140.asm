.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
btr edi, 221
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
and rax, -1701787862
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and cl, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
cmovnz rdx, rcx
bt ebx, edx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
