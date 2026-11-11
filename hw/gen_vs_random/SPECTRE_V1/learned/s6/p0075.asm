.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
sbb al, -107
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
test al, -75
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -48
sub al, dl
adc si, 6
and cl, cl
and al, 33
sbb cl, 105
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
