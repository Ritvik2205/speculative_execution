.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
cmovno eax, edi
cmovs ebx, ecx
cmovnbe edi, esi
xor bl, 2
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
bt ecx, 3
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 79
and al, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
cmovnp eax, edx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and cl, bl
and dil, 75
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
