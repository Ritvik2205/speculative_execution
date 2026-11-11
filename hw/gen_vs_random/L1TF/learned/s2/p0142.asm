.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, cx
test sil, 29
and cl, 35
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor bl, -5
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 66
lea ax, qword ptr [rsi + rbx + 51]
test al, 15
and cl, sil
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
