.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, cl
cmp rax, 40
adc sil, -112
or esi, 32
test eax, -251558852
cmp dil, bl
and dil, -120
add sil, dl
mov dil, bl
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
