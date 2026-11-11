.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rcx + rdx]
add rdx, 51
and ax, 7954
and eax, -409673666
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
test di, 4
or dx, 55
xor ax, 0
xor al, 38
test ax, 636
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
