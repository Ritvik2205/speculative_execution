.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1495028166
and ax, 26813
cmp al, dl
add dil, bl
cmp dil, cl
xor cl, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
dec cl
sub al, -47
adc bl, -14
lea edi, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
