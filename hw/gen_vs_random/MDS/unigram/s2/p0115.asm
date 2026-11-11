.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, dl
and rdi, 34
xor sil, -14
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and bx, 15
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor dil, dil
not cx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and eax, edx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 56
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
cmovnp dx, bx
and bl, 3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
cmovnb ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
