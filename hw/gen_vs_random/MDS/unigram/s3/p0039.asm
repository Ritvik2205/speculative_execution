.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -62
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
test edx, -1561252782
bts bx, si
cmovbe edx, eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
cmovns esi, esi
and eax, 33
xor cl, 83
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
btr ax, ax
test dil, dil
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
btc rdx, rdx
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
