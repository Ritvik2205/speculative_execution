.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmp ebx, 94
or dl, -67
test rbx, rdx
or ax, 11821
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add sil, -61
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and cl, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 26
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
