.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
add dil, -7
and rax, 1994547909
jmp .bb_0.2
.bb_0.2:
test dil, -126
jmp .bb_0.3
.bb_0.3:
test bl, 45
add al, sil
and rsi, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
