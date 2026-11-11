.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
add al, cl
or eax, 848176907
adc cl, dil
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
cmp dil, cl
xor rdi, 77
xor sil, -33
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
