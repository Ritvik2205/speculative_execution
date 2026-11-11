.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
test eax, 158941032
or cl, 119
test sil, 41
jmp .bb_0.1
.bb_0.1:
and edi, 23
test al, 127
and bl, cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and ax, 13090
jmp .bb_0.2
.bb_0.2:
test cl, 62
bts ax, 22
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
