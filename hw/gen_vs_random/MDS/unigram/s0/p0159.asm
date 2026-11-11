.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and cl, 114 # instrumentation
cmovz bx, si
and cl, -71
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rbx, rdi
cmovno esi, edi
btr si, 208
xor dil, 124
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
cmovo eax, ebx
and bx, dx
btc di, 164
xor ebx, eax
btr eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
xor edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
