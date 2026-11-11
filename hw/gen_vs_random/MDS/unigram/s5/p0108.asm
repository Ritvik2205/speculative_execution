.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 8 # instrumentation
cmovnl rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
test dx, 16353
test cl, dl
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovno rdx, rdx
and dl, 18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
and rbx, 65
xor al, dl
or dx, 125
and al, 14
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
and dl, 47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and cl, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and al, 2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
