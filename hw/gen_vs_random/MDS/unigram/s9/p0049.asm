.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
or cl, al
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
test ecx, -1843375753
xor cl, bl
btc dx, bx
not al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
and rax, 41
and dil, -108 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
or cl, al
cmovb eax, edi
not dil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
cmovnp rax, rdi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
and cl, 118 # instrumentation
cmovp eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
