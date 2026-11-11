.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, cx
lea cx, qword ptr [rdx]
sub al, -3
sub al, -47
and dx, 100
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rdx]
cmovp bx, di
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
and al, sil
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
