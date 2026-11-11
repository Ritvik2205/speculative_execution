.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, cx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
or dl, dil
btc ax, 64
and dx, 3
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test edi, -1252846009
xor ax, -12492
btc di, cx
test rdx, 3
or dl, dil
test cl, dil
or cx, 39
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
