.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 95
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
lea rsi, qword ptr [rdx + rbx + 96]
jmp .bb_0.2
.bb_0.2:
test dil, -116
movsx rax, bx
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
sbb dl, sil
setnle bl
lea rdx, qword ptr [rdi + rax + 19]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
