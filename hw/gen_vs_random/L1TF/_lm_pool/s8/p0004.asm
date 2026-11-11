.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
sbb sil, -19
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rdx]
test rdx, rax
sub rsi, 72
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
