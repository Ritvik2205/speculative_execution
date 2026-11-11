.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
btr bx, ax
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
cmp bl, 123
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
xor rsi, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
