.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or dil, -78
test dl, dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
bts rsi, 205
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmovz bx, cx
or dil, cl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
bt cx, bx
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
cmovz edx, esi
bt esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
