.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sbb bl, sil
sbb bl, sil
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
add dx, 68
sbb dil, 75
jmp .bb_0.1
.bb_0.1:
add al, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
