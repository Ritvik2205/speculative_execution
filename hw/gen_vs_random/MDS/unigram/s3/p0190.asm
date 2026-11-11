.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 87
test dil, cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
cmovnp bx, cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and dl, -72 # instrumentation
not cl
test edi, -1252846009
btr ax, di
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
bts ecx, 3
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
cmovz rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
test cl, -18
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 53
cmovnb rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
