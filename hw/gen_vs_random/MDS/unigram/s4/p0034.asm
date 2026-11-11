.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and cl, -22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and cx, dx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 77
cmovnb dx, cx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
btr rdi, 34
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
xor ebx, 11
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
and cl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
