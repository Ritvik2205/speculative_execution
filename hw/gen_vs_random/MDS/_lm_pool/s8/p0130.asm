.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
test edx, -1561252782
xor cl, 24
and al, 35
xor bl, -102
xor dil, cl
xor al, 115
and al, 82
xor al, 34
and si, -121
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
test cl, -123
xor dil, dl
jmp .bb_0.2
.bb_0.2:
and ax, -16061
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
