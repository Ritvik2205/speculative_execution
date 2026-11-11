.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
or al, -48
test ebx, 86
sub bl, 15
adc bl, 86
sub edx, -33
and eax, -409673666
jmp .bb_0.1
.bb_0.1:
test eax, -2032743474
sub dl, sil
lea rdx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
