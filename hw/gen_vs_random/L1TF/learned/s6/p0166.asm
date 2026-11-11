.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 47
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
cmp al, 56
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rdx + 91]
sub dl, -78
bts ecx, 225
jmp .bb_0.2
.bb_0.2:
and cl, 32 # instrumentation
cmovnbe ecx, esi
xor al, bl
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
