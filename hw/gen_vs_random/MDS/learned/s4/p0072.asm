.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
or rax, 1020005579
or dl, cl
test cl, dl
and rax, 41
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
