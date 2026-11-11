.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
add cl, -20
jmp .bb_0.1
.bb_0.1:
test al, -32
or al, dil
test esi, 72
test ax, 7679
cmp dl, -93
or cl, cl
jmp .bb_0.2
.bb_0.2:
bts eax, 232
or rdx, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
