.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
and cx, -8
xor cl, -13
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
or al, 25
jmp .bb_0.1
.bb_0.1:
and cx, -8
jmp .bb_0.2
.bb_0.2:
and ax, 19740
xor ax, -6793
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
xor dil, -70
btr ebx, 0
test si, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
