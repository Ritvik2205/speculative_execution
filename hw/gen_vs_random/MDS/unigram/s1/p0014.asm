.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 101
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
or cl, 7
cmovbe eax, edi
btr edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and edi, edi
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
btr esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
xor dx, 67
cmovns rsi, rax
cmovnp rcx, rdx
or ax, dx
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
xor di, 93
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 31
or rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
