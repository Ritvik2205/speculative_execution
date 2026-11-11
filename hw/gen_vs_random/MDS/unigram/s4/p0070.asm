.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz edx, eax
bt edi, edi
test rcx, 89
and cl, -101
and sil, -94
btc rsi, 4
bt esi, 63
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and al, 126
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and cl, 102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 59
xor dl, -68
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
