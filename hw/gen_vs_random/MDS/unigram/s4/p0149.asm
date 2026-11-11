.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and sil, 89
and cl, -15 # instrumentation
cmovnp cx, cx
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
cmovbe ebx, ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
or ebx, -104
and dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
and dl, 50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
or sil, -49
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
xor rcx, -2
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
or ecx, 74
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 59
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
