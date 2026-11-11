.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
test al, -81
test cl, -18
xor ax, -1005
test esi, 425331143
and rbx, 65
and cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
test sil, -96
or al, 24
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and bl, 68
and eax, -85386306
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
