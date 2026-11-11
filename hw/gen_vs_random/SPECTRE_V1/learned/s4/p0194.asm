.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
lea ax, qword ptr [rbx]
or eax, -1161451853
and al, -23
sub bl, cl
sbb dil, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or rbx, 64
sub al, cl
sbb cl, dl
and ax, -13240
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
