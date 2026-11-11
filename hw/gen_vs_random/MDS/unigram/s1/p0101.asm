.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rbx, rcx
and ax, 30884
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and dl, -73 # instrumentation
cmovns rdi, rax
or al, al
and dl, -33 # instrumentation
cmovns rbx, rbx
cmovo cx, cx
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and cx, dx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and di, 7
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
cmovle dx, dx
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and cl, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
btc bx, 179
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
