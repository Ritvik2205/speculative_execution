.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
sbb dil, dl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
lea cx, qword ptr [rdx]
bt ebx, edx
lea eax, qword ptr [rdi]
cmp dil, bl
jmp .bb_0.1
.bb_0.1:
bt edi, ecx
jmp .bb_0.2
.bb_0.2:
sub dil, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
