.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, edx
setp dl
cmovno rcx, rbx
add al, -44
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
or cl, dl
adc edx, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
