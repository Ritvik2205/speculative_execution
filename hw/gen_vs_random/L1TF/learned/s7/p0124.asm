.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 127
or rcx, 93
xor dl, 19
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
sub rdx, 60
sub bl, -96
sbb rax, 62
lea rcx, qword ptr [rax + rdx + 63]
sbb dil, 15
jmp .bb_0.1
.bb_0.1:
add bl, 65 # instrumentation
cmovo rbx, rax
xor dil, sil
or rax, 699028911
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
