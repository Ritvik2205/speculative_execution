.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, bl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and sil, -94
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 49
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
or cl, 10
cmovz rsi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
cmovz rbx, rax
jmp .bb_0.1
.bb_0.1:
or bl, -98
and bl, -66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and ax, cx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
cmovl rsi, rbx
or bl, 84
btc rdx, rbx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
