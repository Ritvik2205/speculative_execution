.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
sub al, -3
test eax, 899472326
jmp .bb_0.1
.bb_0.1:
or bl, -5
and sil, -90
or cx, 49
jmp .bb_0.2
.bb_0.2:
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
