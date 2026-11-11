.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -124
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
cmovp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
test bl, 65
test edx, edi
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rdi, 39
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 28
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
