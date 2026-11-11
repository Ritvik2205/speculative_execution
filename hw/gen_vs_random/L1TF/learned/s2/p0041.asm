.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
sbb al, 92
cmp cl, al
not sil
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and ax, 26813
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
lea rbx, qword ptr [rsi + rbx + 85]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
