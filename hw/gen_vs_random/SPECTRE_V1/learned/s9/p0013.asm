.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
lea ax, qword ptr [rax]
sub al, -1
add sil, 2
and bl, -43
and rax, -175411684
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
test bl, -8
setns cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
