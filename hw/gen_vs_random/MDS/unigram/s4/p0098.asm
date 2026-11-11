.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
cmovz si, cx
xor bl, -61
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
xor bl, -61
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and bl, 49 # instrumentation
cmovbe rsi, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
and cl, -6
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
