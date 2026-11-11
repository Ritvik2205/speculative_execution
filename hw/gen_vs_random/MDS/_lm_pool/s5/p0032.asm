.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and eax, -574348013
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
xor cl, 24
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bts ecx, 3
or al, -22
test sil, al
test rcx, -613256812
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
