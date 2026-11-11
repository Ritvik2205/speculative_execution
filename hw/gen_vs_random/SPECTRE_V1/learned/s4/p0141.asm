.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sub sil, dl
add sil, 2
test al, cl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
xor cl, sil
and al, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc bl, dl
xor al, bl
cmp di, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
