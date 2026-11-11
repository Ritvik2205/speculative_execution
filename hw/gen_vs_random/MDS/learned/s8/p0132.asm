.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, cx
and bl, 68
xor al, dil
or esi, -110
test dil, bl
xor dl, -19
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
or al, -75
xor al, 9
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or al, -22
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
