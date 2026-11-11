.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 25
and sil, 111
lea rbx, qword ptr [rcx + rsi + 32]
sub bl, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add dil, dl
xor cl, dl
lea cx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
