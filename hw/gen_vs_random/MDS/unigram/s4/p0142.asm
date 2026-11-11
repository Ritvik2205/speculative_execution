.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
btc rax, rax
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
cmovns ax, cx
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdx
or ebx, edx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
xor ax, -16696
btc esi, edi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
and rdi, 65
cmovb dx, ax
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rsi
and dil, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
