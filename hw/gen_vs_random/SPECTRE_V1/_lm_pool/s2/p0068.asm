.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb ecx, ebx
cmovno si, cx
lea eax, qword ptr [rcx + rcx + 81]
sbb al, 33
sub al, -82
adc dil, sil
dec cl
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
