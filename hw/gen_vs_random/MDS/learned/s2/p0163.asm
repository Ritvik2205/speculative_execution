.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo bx, si
or bl, cl
test cl, -123
test cl, -86
test bl, -14
xor bl, -61
not al
xor ax, -6793
jmp .bb_0.1
.bb_0.1:
or dl, -21
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or dx, 125
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
