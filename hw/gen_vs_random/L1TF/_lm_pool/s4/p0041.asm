.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 94
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
sub rbx, 19
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
or dil, al
and ax, 37
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
test cl, 98
xor di, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
