.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and al, sil
and cl, -17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
btc ecx, 65
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and cl, -109 # instrumentation
not rbx
cmovnl ebx, eax
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
cmovp rdx, rax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 73
cmovb ax, dx
and al, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
cmovno edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
