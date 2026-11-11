.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
test al, -75
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and al, cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, 127
sbb cl, 105
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or al, sil
and bl, -65
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
