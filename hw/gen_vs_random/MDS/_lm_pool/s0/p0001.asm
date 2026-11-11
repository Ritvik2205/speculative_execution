.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
xor dl, sil
test sil, al
jmp .bb_0.1
.bb_0.1:
xor bl, dl
or dil, -76
or al, -22
test bx, 25542
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and cx, -2
test cl, -113
test dl, al
or dl, -97
xor al, -89
or rbx, -72
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
