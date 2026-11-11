.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
xor dil, -42
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rbx + rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
bts dx, 9
xchg rax, rcx
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
