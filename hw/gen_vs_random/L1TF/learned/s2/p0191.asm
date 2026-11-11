.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 99
or dl, -67
test rbx, rdx
and ax, 37
jmp .bb_0.1
.bb_0.1:
test dl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
