.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
test dil, dil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and ax, di
and rdx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdx]
bts si, 158
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
btc esi, eax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
test dl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 75
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
test cx, bx
not rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
