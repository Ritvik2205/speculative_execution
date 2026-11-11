.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
xor dl, dil
or dil, 12
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
cmovz rbx, rax
jmp .bb_0.3
.bb_0.3:
and dl, -73
or dl, sil
or dx, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
