.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
xor rbx, 89
and eax, -574348013
test al, 127
and cl, dil
btc eax, 40
xor al, -4
and cx, -2
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rax, -978188247
xor cl, bl
test cl, dl
and dx, 3
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
xor dl, cl
jmp .bb_0.1
.bb_0.1:
test cl, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
