.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and dl, -126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
bts eax, 222
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 50
test di, 19
and rax, 498847670
cmovp eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and sil, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
cmovnp ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
bt ecx, esi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 25
and rcx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rcx]
or rdx, rsi
test si, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
