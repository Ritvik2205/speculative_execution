.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
inc dil
or rax, 699028911
or al, -2
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sub al, -3
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
and dil, dil
xor bl, sil
sub al, -97
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
