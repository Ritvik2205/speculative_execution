.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
bt rsi, rcx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
cmovb bx, di
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
bts ecx, edx
cmovz dx, si
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnbe cx, bx
bt rcx, rcx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
cmovs di, cx
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
or eax, esi
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
cmovnl ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
bt rcx, rdx
cmovnb rdx, rdx
cmovnbe bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
