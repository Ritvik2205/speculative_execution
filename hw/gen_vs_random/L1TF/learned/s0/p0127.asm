.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
lea rbx, qword ptr [rcx + rcx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
or ax, -10161
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
add bl, 68
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and cl, sil
jmp .bb_0.2
.bb_0.2:
sub bl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
