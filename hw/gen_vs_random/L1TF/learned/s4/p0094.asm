.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 2
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cwde
jmp .bb_0.2
.bb_0.2:
sub bl, -96
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
or sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
