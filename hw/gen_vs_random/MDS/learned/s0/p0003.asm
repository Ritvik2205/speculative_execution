.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
test bl, dl
not dil
and bx, 37
jmp .bb_0.1
.bb_0.1:
and rbx, 65
or cx, -42
or rcx, -17
test cl, 62
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
xor al, 9
cmovno si, bx
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
