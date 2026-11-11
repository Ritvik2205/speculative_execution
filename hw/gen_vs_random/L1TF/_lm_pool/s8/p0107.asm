.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
sbb sil, dl
lea ecx, qword ptr [rdi]
test bl, 12
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and cl, bl
add esi, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
