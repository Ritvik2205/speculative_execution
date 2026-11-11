.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rcx, 8
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 27
and sil, -90
test cx, 7
jmp .bb_0.2
.bb_0.2:
cmp ax, -31327
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
