.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
and cl, 62
or dl, sil
jmp .bb_0.1
.bb_0.1:
test rbx, rdx
add dl, -1
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
add dl, cl
cmp dil, 17
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
