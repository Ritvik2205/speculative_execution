.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add al, 117
xor ebx, -81
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 12
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 45
or cl, -78
add bl, sil
jmp .bb_0.1
.bb_0.1:
test bl, 45
cmovb ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
test cl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
