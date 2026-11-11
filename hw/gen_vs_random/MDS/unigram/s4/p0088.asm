.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rcx, rbx
and dl, 48 # instrumentation
cmovz rdi, rsi
test sil, -96
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
bts ax, 22
cmovle ax, bx
and bl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
xor eax, -127
not bl
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
cmovnle ebx, esi
test rax, rdi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 62
cmovnb rsi, rsi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 97
test cl, 73
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
