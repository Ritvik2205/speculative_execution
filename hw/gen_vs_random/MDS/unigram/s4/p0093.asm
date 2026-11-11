.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
or cx, 10
or bx, 35
cmovp rax, rsi
cmovz rcx, rax
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
xor dl, -68
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
test cl, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
xor bl, 2
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 56
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
