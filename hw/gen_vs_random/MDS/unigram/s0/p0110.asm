.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rsi, rdi
or cl, 39
and sil, 8 # instrumentation
cmovz rax, rsi
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
btc rdx, rbx
bts rax, 77
btr si, 52
or rax, 1461812833
and ax, -4410
bt bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test eax, esi
and dx, 3
cmovp edi, esi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
test cl, 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
