.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
btc edi, 20
not sil
bts rdx, 255
or dil, -52
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt cx, si
and al, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
cmovz dx, cx
not si
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 12
btr rsi, 73
and dl, -26 # instrumentation
cmovnp rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 37
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 14
test edx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
