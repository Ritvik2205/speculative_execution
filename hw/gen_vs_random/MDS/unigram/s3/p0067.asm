.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and edx, -44
and cl, 79
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
test cl, -123
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 26
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 38
xor dil, al
and cl, 7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and di, 91
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
