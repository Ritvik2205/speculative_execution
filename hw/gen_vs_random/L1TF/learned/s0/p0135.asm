.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
mul dx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 14
cmp ax, 2764
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 10
setl bl
cmovz si, cx
sbb rax, 717206440
cmovns edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
