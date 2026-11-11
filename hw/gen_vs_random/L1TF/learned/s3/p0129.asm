.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and dx, 61
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
lea cx, qword ptr [rdx]
lea ecx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 97
adc dl, cl
jmp .bb_0.3
.bb_0.3:
not si
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
