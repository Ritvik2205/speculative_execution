.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
sub al, 9
test bx, 65
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 77
add al, 93
sbb cl, -11
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
