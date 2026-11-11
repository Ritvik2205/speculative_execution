.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
cmovle eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
cmovnbe dx, ax
bt si, dx
cmovp bx, cx
bt di, 88
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
xor di, bx
bt eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
xor dil, 59
cmovb rdi, rsi
and ax, bx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 51
cmovbe rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
