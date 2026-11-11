.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
cmp rax, 16650668
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
btc cx, ax
and cl, 23
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rdx]
xor sil, 64
jmp .bb_0.2
.bb_0.2:
not dx
and sil, cl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
